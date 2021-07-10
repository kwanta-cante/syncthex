defmodule Syncthex.Syncthing.Deserializer do
@moduledoc """
This is a deserializer which can:
**read** from a json encoded or protobuf data containing string keys and
**output** either to a Map (:json) or to a struct tree from `Syncthex.Proto`
"""

  def read(input, :json, :struct) do
    Protobuf.JSON.to
  end

end
