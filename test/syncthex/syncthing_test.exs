defmodule Syncthex.SyncthingTest do
  use ExUnit.Case
  alias Syncthex.Syncthing
  use Snapshy
  setup_all do
    client = Syncthing.client()
    {:ok, %{client: client}}
  end
  test_snapshot "grab config", %{client: client} do
    {:ok, config_resp} = Syncthing.config(client)
    require IEx
    IEx.pry
    assert config_resp.body
    |> Map.get("devices")
    |> List.first
    |> Map.get( "deviceID")
    config_resp
    #assert Map.get(config_resp, body) == version
  end
  test "protobuf defs" do

  end
end
