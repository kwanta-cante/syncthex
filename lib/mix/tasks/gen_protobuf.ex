defmodule Mix.Tasks.GenProtobuf do
  use Mix.Task
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
  @proto_defs [
    "repos/protobuf/gogoproto/gogo.proto",
    "lib/protocol/bep.proto",
    "lib/discover/local.proto",
    @elixir_pb_proto_options
  ]
  @generated_modules_prefix "Syncthex.Proto"
  def write_elixir_pb_proto(file), do: write_elixir_pb_proto(file, %{
    prefix: @generated_modules_prefix
  })
  def write_elixir_pb_proto(file, options) do
    content =[
      ~s(syntax = "proto3";),
      ~s(package elixirpb;),
      "import \"repos/elixir-protobuf/src/elixirpb.proto\";",
      "option (elixirpb.file).module_prefix = \"" <> options[:prefix] <> "\";"
    ]
    File.write(file, (content |> Enum.join("\n")) <> "\n")
  end


  @shortdoc "generate the syncthing procol buffer definitions"
  @impl Mix.Task
  def run(_) do
    checkout(@git_checkout_links)
    Mix.shell.cmd( "mkdir -p " <> @target_dir )
    write_elixir_pb_proto( @proto_path <> "/" <>@elixir_pb_proto_options)
    Mix.shell.cmd(
      ["protoc",
       "--proto_path=" <> @proto_path,
       "--elixir_out="<>@target_dir
       | @proto_defs
      ] |> Enum.join(" ")
      )

  end
end
