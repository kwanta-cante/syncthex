defmodule Syncthex.Syncthing.Event do
  defstruct [:data, :global_id, :id, :time, :type]

  @json_keys %{
    "data" => :data,
    "globalID" => :global_id,
    "id" => :id,
    "time" => :time,
    "type" => :type
  }
  @spec decode(
          maybe_improper_list(
            maybe_improper_list(maybe_improper_list(any(), [] | map()) | map(), [] | map())
            | map(),
            [] | map()
          )
          | map()
        ) ::
          maybe_improper_list(
            maybe_improper_list(maybe_improper_list(any(), [] | map()) | map(), [] | map())
            | struct(),
            [] | struct()
          )
          | struct()
  @doc """
  Decodes a JSON object into a #{__MODULE__} struct.
  """
  def decode({:error, _} = err), do: err
  def decode([event | rest]), do: [decode(event) | decode(rest)]
  def decode([]), do: []

  def decode(%{} = json),
    do:
      json
      |> Enum.map(fn
        {"time", t} -> {:time, DateTime.from_iso8601(t) |> elem(1)}
        {k, v} -> {@json_keys[k], v}
      end)
      |> Map.new()
      |> (&struct(__MODULE__, &1)).()
end
