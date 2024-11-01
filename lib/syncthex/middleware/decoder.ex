defmodule Syncthex.Middleware.Decoder do
  require Logger
  alias Syncthex.Syncthing.JsonPatcher

  def call(env, next, options) do
    env
    |> Tesla.run(next)
    |> decode(options[:result_type])
  end

  # this unwraps the body
  def decode({:ok, %{body: json_body}}, result_type),
    do: decode(json_body, result_type)

  def decode(%{} = json_body, result_type) do
    json_body
    |> JsonPatcher.patch(result_type)
    |> Protobuf.JSON.from_decoded(result_type)
  end

  # this secodes arrays
  def decode([first | rest], [result_type]) do
    case decode(first, result_type) do
      {:ok, result} -> {:ok, [result | decode(rest, [result_type])]}
      {:error, _} = result -> result
    end
  end

  def decode([], result_type), do: []
end
