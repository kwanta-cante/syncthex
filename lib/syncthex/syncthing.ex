defmodule Syncthex.Syncthing do
  @moduledoc """
  Syncthing client bindings using Tesla
  """
  alias Syncthex.Syncthing.ProtobufMiddleware
  @doc """
  creates a client instance.

  the parameters `:url` and `:key` can be supplied in a map.
  Missing params are gatherted from `Application.get_all_env/1`
  Config options (map keys):
  * `deserialized_type` defaults to `:struct`
    * value `:json` deserializes to a Map
    * value `:struct` deserializes to the corresponding generated struct from `Syncthex.Proto`
  """

  def client, do:
    config()
    |> client
  def client(%{url: url, key: key} = config) do

    adapter =
      case config do
        %{api_cert: cert_file}->
          {Tesla.Adapter.Hackney, [recv_timeout: 30_000, ssl_options: [ cacertfile: cert_file]]}
        _->
          {Tesla.Adapter.Hackney, [recv_timeout: 30_000]}
      end
    [
      {Tesla.Middleware.BaseUrl, url},
      {Tesla.Middleware.Headers, [{"X-API-Key", key}]},
      ProtobufMiddleware,
      Tesla.Middleware.JSON,
    ]
    |> Tesla.client(adapter)
  end
  def client(%{}=map) do
    config()
    |> Map.merge(map)
    |> client()
  end
  def config(client) do
    Tesla.get(client,"/rest/config")
  end



  defp config_with_cert(config) do
    case Application.get_env(:syncthex, :api_cert) do
      nil-> config
      {:SYSTEM_HOME, path} ->
        config
        |>Map.put(:api_cert, Path.join(System.user_home!, path))
    end
  end
  defp config_with_deserialized_type(%{deserialized_type: _} = config), do: config
  defp config_with_deserialized_type(config), do: Map.put(config, :deserialized_type, :struct)
  defp config(), do:
    Application.get_all_env(:syncthex)
    |> Keyword.take([:url, :key])
    |> Map.new()
    |> config_with_cert()

end
