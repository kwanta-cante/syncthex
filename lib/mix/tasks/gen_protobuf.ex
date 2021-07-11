defmodule Mix.Tasks.GenProtobuf do
  use Mix.Task
  alias Syncthex.Utils.FileList
  @moduledoc """
  Task for generating the procol Buffer definitions.
  It checks out all needed repositories into /proto,
  It then creates an options file for configuring source generation
  """
  def checkout([]), do: []
  def checkout([{url, target_dir}|rest]),
    do: [
      Mix.shell.cmd("mkdir -p "<> target_dir <>"; git clone " <> url <>" " <> target_dir)
      |checkout(rest)
      ]
  @target_dir "lib/generated"
  @checkout_dir "proto"
  @elixir_pb_proto_dir "/syncthing/proto/repos/elixir-protobuf"
  @git_checkout_links [
    {"https://github.com/syncthing/syncthing.git", @checkout_dir<>"/syncthing"},
    {"https://github.com/gogo/protobuf.git", @checkout_dir<>"/syncthing/proto/repos/protobuf"},
    {"https://github.com/elixir-protobuf/protobuf.git",  @checkout_dir<>@elixir_pb_proto_dir}
  ]
  @proto_path "proto/syncthing/proto"
  @elixir_pb_proto_options "elixirpb_options.proto"
  def proto_defs , do: [
    "repos/protobuf/gogoproto/gogo.proto",
    "lib/protocol/bep.proto",
    "lib/discover/local.proto",
    "ext.proto",

  ]
  |> FileList.add_glob(@proto_path <> "/lib/config/*.proto")
  |> FileList.add_glob(@proto_path <> "/lib/db/*.proto")
  |> FileList.add_glob(@proto_path <> "/lib/fs/*.proto")
  |> Enum.map(fn file-> Path.relative_to(file, @proto_path) end)
  @generated_modules_prefix "Syncthex.Proto"
  def gen_prefix_for_file(file, package_name) do
    @generated_modules_prefix <> "." <> Macro.camelize(package_name)
  end
  @elixirpb_proto_path "repos/elixir-protobuf/src/elixirpb.proto"
  @doc """
    Ensures the prefix option is set, by inserting this block:
    ```pbf
    import "#{@elixirpb_proto_path}";
    option (elixirpb.file).module_prefix = #{ @generated_modules_prefix};
    ```
  """
  def ensure_elixir_pb_option([]), do: []
  #file does not generate anything
  def ensure_elixir_pb_option([@elixirpb_proto_path| rest]),
    do: ensure_elixir_pb_option(rest)
  def ensure_elixir_pb_option([file| rest]) do
    content = File.read!(file)

    package_name= case  Regex.scan( ~r/^package\W+(?<package>[a-zA-Z0-9]*);/m , content ) do
      [[_,package_name]|_]-> package_name
      _-> raise "package name not defined in " <> file
    end
    ret = [file: file]
    unless ( Regex.match?( ~r/^option\W*[(]\W*elixirpb.file\W*[)][^=]*=[^"]*\"([^"]+).*;/m , content )) do
      with file_handle <- File.open!(file, [:append])
      do
        add_content = """
        import "#{@elixirpb_proto_path}";
        option (elixirpb.file).module_prefix = "#{gen_prefix_for_file(file, package_name)}";
        """
        IO.puts(file_handle,add_content )

        ret = Keyword.put( ret,  :modified, true)
      end
    end
    [ret | ensure_elixir_pb_option(rest)]
  end

  @shortdoc "generate the syncthing procol buffer definitions"
  @impl Mix.Task
  def run(_) do

    # Needed to honor the module options
    protobuf_path=
      File.cwd!
      |> Syncthex.Utils.Path.relative_to(Mix.Project.deps_paths.protobuf)
    Mix.shell.cmd "cd #{protobuf_path}; mix deps.get ; mix escript.install --force"
    # Mix.shell.cmd "mix escript.install --force github tony612/protobuf-elixir tag v0.7.1"
    checkout(@git_checkout_links)

    # insert json_name annotations in addition to `ext.json`
    proto_defs
    |> Mix.Utils.CopyJsonNameHack.process(prefix: Path.join(File.cwd!, @proto_path))
    require IEx
    IEx.pry
    Mix.shell.cmd( "mkdir -p " <> @target_dir )
    #write_elixir_pb_proto( @proto_path <> "/" <>@elixir_pb_proto_options)
    proto_defs
    |> Enum.map(fn
        filename-> Path.join(@proto_path, filename)
      end)
    |>ensure_elixir_pb_option()
    Mix.shell.cmd(
      ["protoc",
       "--proto_path=" <> @proto_path,
       "--elixir_out=gen_descriptors=true:"<>@target_dir
       | proto_defs()
      ] |> Enum.join(" ")
      )

  end
end
