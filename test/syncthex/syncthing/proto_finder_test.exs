defmodule Syncthex.Syncthing.ProtoFinderTest do
  use ExUnit.Case
  alias Syncthex.Syncthing.ProtoFinder
  use Snapshy
  @compile_cwd File.cwd!
  test_snapshot "check that the loader finds the proto files" do
    path = Application.get_env(:syncthex, :protobuf_def_glob)

    ProtoFinder.all_proto_files
    |> Enum.map( fn entry -> Path.relative_to(entry, @compile_cwd) end)

  end
end
