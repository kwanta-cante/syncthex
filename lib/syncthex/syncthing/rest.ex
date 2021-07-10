defmodule Syncthex.Syncthing.REST do
  @moduledoc """
  Syncthing client bindings using Tesla
  """
  alias Syncthex.Middleware
  alias Syncthex.Proto
  @doc """
    These mappingsa are used to uinform the `&Syncthex.Middleware.ResponseType` middleware
    to return the correct types
  """
  @type_to_url [
    {Proto.Configuration, "/rest/config" },
    {Proto.GUIConfiguration, "/rest/config/gui" },
    {Proto.LDAPConfiguration, "/rest/config/ldap" },

    {Proto.DeviceConfiguration, {"/rest/config/devices", array: true} },
    {Proto.FolderConfiguration, {"/rest/config/folders", array: true} },
    ## regex configs are a bit more expensive to match, so test at the end
    {Proto.DeviceConfiguration, ~r"/rest/config/devices/[a-zA-Z0-9]*" },
    {Proto.FolderConfiguration, ~r"/rest/config/folders/[a-zA-Z0-9]*" },
  ]
  @doc """
  creates a client instance.

  the parameters `:url` and `:key` can be supplied in a map.
  Missing params are gatherted from `Application.get_all_env/1`
  Config options (map keys):
  * `deserialized_type` defaults to `:struct`
    * value `:json` deserializes to a Map
    * value `:struct` deserializes to the corresponding generated struct from `Syncthex.Proto`
  """

  def client, do: config() |> client
  def client(%{url: url, key: key} = config) do

    adapter =
      case config do
        %{api_cert: cert_file}->
          {Tesla.Adapter.Hackney, [recv_timeout: 30_000, ssl_options: [ cacertfile: cert_file]]}
        _->
          {Tesla.Adapter.Hackney, [recv_timeout: 30_000]}
      end
    [
      {Middleware.ResponseType, type_to_url: @type_to_url},
      {Tesla.Middleware.BaseUrl, url},
      {Tesla.Middleware.Headers, [{"X-API-Key", key}]},
      Middleware.Decoder,
      Tesla.Middleware.JSON,
    ]
    |> Tesla.client(adapter)
  end
  def client(%{}=map) do
    config()
    |> Map.merge(map)
    |> client()
  end
  ### /rest/* bindings
  def config(client),
   do: do_call(client,"/rest/config")
  def config_restart_required?(client),
    do: do_call(client, "/rest/config/restart-required")

  def config_folders(client),
    do: do_call(client, "/rest/config/folders")
  def config_folder(client, folder_id) when is_bitstring(folder_id),
    do: do_call(client, "/rest/config/folders/#{folder_id}")

  def config_devices(client),
    do: do_call(client, "/rest/config/devices")
  def config_device(client, device_id) when is_bitstring(device_id),
    do: do_call(client, "/rest/config/devices/#{device_id}")

  def config_options(client),
    do: do_call(client, "/rest/config/options")

  def config_ldap(client),
    do: do_call(client, "/rest/config/ldap")

  def config_gui(client),
    do: do_call(client, "/rest/config/gui")

  defp config_with_cert(config) do
    case Application.get_env(:syncthex, :api_cert) do
      nil-> config
      {:SYSTEM_HOME, path} ->
        config
        |>Map.put(:api_cert, Path.join(System.user_home!, path))
    end
  end
  defp do_call(client, url) do
    Tesla.get(client, url)
  end
  defp config_with_deserialized_type(%{deserialized_type: _} = config), do: config
  defp config_with_deserialized_type(config), do: Map.put(config, :deserialized_type, :struct)
  defp config(), do:
    Application.get_all_env(:syncthex)
    |> Keyword.take([:url, :key])
    |> Map.new()
    |> config_with_cert()

end
