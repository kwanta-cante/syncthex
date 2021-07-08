defmodule Syncthex.Proto.Announce do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          id: binary,
          addresses: String.t(),
          instance_id: integer
        }

  defstruct [:id, :addresses, :instance_id]

  field :id, 1, type: :bytes
  field :addresses, 2, repeated: true, type: :string
  field :instance_id, 3, type: :int64, json_name: "instanceId"
end
