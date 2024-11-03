defmodule Mix.Tasks.Syncthex.Regenerate do
  use Mix.Task
  @shortdoc "Regenerate the protobuf definitions"
  @moduledoc """
  Task for generating the procol Buffer definitions.
  It checks out all needed repositories into /proto,
  It then creates an options file for configuring source generation
  """
  @generate_protocol_elixir_out_opts [
    package_prefix: "Syncthex.Proto",
    one_file_per_module: "true",
    gen_descriptors: "true"
  ]
  @generate_protocol_opts [
    proto_path: "priv/proto/syncthing/proto"
  ]
  def run([]) do
    Mix.Task.run("syncthex.checkout_proto")
    empty_generated_dir()
    generate_protocol("lib/generated")
  end

  defp empty_generated_dir do
    if Mix.Shell.IO.yes?("Remove existing `lib/generated` folder?") do
      File.rm_rf!("lib/generated")
      File.mkdir_p!("lib/generated")
    end
  end

  defp generate_protocol(destination, opts \\ @generate_protocol_opts) do
    [
      "protoc",
      "--proto_path=" <> Keyword.fetch!(opts, :proto_path),
      "--elixir_out=" <>
        build_elixir_out_option_value(
          destination,
          Keyword.get(opts, :elixir_out, @generate_protocol_elixir_out_opts)
        )
      | proto_files()
    ]
    |> Enum.join(" ")
    |> then(fn cmd ->
      Mix.Shell.IO.info("Running Command: #{cmd}")
      cmd
    end)
    |> Mix.Shell.IO.cmd(
      env: [
        {"PATH", System.get_env("PATH") <> ":/home/vscode/.mix/escripts/"}
      ]
    )
  end

  defp proto_files(),
    do:
      Path.wildcard("priv/proto/syncthing/**/*.proto")
      |> Enum.filter(fn
        "priv/proto/syncthing/proto/repos" <> _ -> false
        _ -> true
      end)

  defp build_elixir_out_option_value(dest, opts),
    do:
      opts
      |> Keyword.take(@generate_protocol_elixir_out_opts |> Keyword.keys())
      |> Enum.map(fn
        {key, value} -> to_string(key) <> "=" <> value
      end)
      |> Enum.join(",")
      |> Kernel.<>(":#{dest}")
end
