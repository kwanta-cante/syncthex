defmodule Syncthex.MixProject do
  use Mix.Project

  def project do
    [
      app: :syncthex,
      version: "0.1.0",
      elixir: "~> 1.12",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      aliases: aliases()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {Syncthex.Application, []}
    ]
  end

  def aliases(),
    do: [
      regen: "syncthex.regenerate"
    ]

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:tesla, "~> 1.4"},

      # optional, but recommended adapter
      {:hackney, "~> 1.17.0"},

      # optional, required by JSON middleware
      {:jason, ">= 1.0.0"},
      {:snapshy, "~> 0.2", only: [:test]},
      # {:exprotobuf, "~> 1.2.17"},
      # {:protobuf, "~> 0.7.1"},
      # {:protobuf, git: "https://github.com/kwanta-cante/protobuf.git"},
      {:protobuf, path: "../protobuf"}
      # Only for files generated from Google's protos.
      # Can be ignored if you don't use Google's protos.
      # Or you can generate the code by yourself.
      # {:google_protos, "~> 0.1"}
    ]
  end
end
