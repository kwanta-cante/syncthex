defmodule Syncthex.SyncthingTest do
  use ExUnit.Case
  alias Syncthex.Syncthing.REST
  use Snapshy
  setup_all do
    client = REST.client()
    {:ok, %{client: client}}
  end
  test "grab config", %{client: client} do
    {:ok, config_resp} = REST.config(client)
    assert length(config_resp.devices) >=1
    first_device =
      config_resp.devices
      |> hd
    assert is_bitstring(first_device.device_id)
    assert String.length(first_device.device_id) > 0

    assert is_bitstring(first_device.name)
  end
  test "compare /rest/config with /rest/config/devices and with /rest/config/devices/id", %{client: client} do
    {:ok, config} = REST.config(client)
    {:ok, devices}= REST.config_devices(client)
    assert config.devices == devices
    for device <- devices do
      cmp = REST.config_device(client,device.device_id)
      assert cmp == device
    end
  end


end
