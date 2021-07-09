defmodule Syncthex.Proto.ObservedFolder do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          time: Google.Protobuf.Timestamp.t() | nil,
          id: String.t(),
          label: String.t()
        }

  defstruct [:time, :id, :label]

  field :time, 1, type: Google.Protobuf.Timestamp
  field :id, 2, type: :string
  field :label, 3, type: :string
end

defmodule Syncthex.Proto.ObservedDevice do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          time: Google.Protobuf.Timestamp.t() | nil,
          id: binary,
          name: String.t(),
          address: String.t()
        }

  defstruct [:time, :id, :name, :address]

  field :time, 1, type: Google.Protobuf.Timestamp
  field :id, 2, type: :bytes
  field :name, 3, type: :string
  field :address, 4, type: :string
end
