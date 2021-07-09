defmodule Syncthex.Syncthing.ProtobufMiddleware do
  require Logger
  alias Syncthex.Syncthing.JsonPatcher
  def call(env, next, options) do
    env
    |>Tesla.run(next)
    |> decode()
  end
  @url_response_typemap %{
    "/rest/config" => Syncthex.Proto.Configuration
  }
  def decode({:ok, %{body: %{}=json_body}}) do
    require IEx
    IEx.pry
    json_body
    |>JsonPatcher.patch(Syncthex.Proto.Configuration)
    |>Protobuf.JSON.from_decoded( Syncthex.Proto.Configuration)
  end
end
