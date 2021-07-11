defmodule Syncthex.SyncthingTest do
  use ExUnit.Case
  alias Syncthex.Syncthing.REST
  setup_all do
    client = REST.client()
    {:ok, %{client: client}}
  end
  test "access syncthing ext extension", %{client: client} do
    {:ok, config} = REST.config(client)
    descriptor = Syncthex.Proto.Config.Configuration.descriptor
    field_descriptor = Enum.at(descriptor.field,6)
    ext =
      field_descriptor.options
      |> Google.Protobuf.FieldOptions.get_extension(
          Syncthex.Proto.Ext.PbExtension, :json)
    require IEx
    IEx.pry
    assert not is_nil(ext)
  end
  test "protobuf defs" do

  end
end
