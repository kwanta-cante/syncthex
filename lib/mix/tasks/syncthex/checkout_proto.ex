defmodule Mix.Tasks.Syncthex.CheckoutProto do
  alias Hex.API.Key
  use Mix.Task
  @shortdoc "Checkout the protobuf definitions from the syncthing repository"

  @checkout_dir "priv/proto"
  @repo_url "git@github.com:syncthing/syncthing.git"
  @git_checkout_links [
    {"https://github.com/syncthing/syncthing.git", @checkout_dir <> "/syncthing",
     sparse: "proto"},
    {"https://github.com/gogo/protobuf.git", @checkout_dir <> "/protobuf"}
    # {"https://github.com/elixir-protobuf/protobuf.git",
    #  @checkout_dir <> "/github.com/elixir-protobuf/protobuf"}
  ]

  def ensure_empty_checkout_dir(dir) do
    if File.exists?(dir) and
         Mix.Shell.IO.yes?("Remove existing protocol definitions directory #{dir}?") do
      File.rm_rf!(dir)
      File.mkdir_p!(dir)
    else
      {:error, "Directory already exists"}
    end
  end

  def do_checkout(url, target_dir, opts \\ []),
    do:
      [
        checkout: target_dir,
        dest: target_dir,
        git: url
      ]
      |> Kernel.++(Keyword.take(opts || [], [:sparse]))
      |> Mix.SCM.Git.checkout()

  def(run([])) do
    with :ok <- ensure_empty_checkout_dir(@checkout_dir) do
      @git_checkout_links
      |> Enum.map(fn
        {url, target_dir} -> do_checkout(url, target_dir)
        {url, target_dir, opts} -> do_checkout(url, target_dir, opts)
      end)

      File.mkdir!("priv/proto/syncthing/proto/repos")

      File.ln_s!(
        "../../../protobuf",
        "priv/proto/syncthing/proto/repos/protobuf"
      )
    end
  end
end
