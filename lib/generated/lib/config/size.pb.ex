defmodule Syncthex.Proto.Size do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          value: float | :infinity | :negative_infinity | :nan,
          unit: String.t()
        }

  defstruct [:value, :unit]

  field :value, 1, type: :double
  field :unit, 2, type: :string
end
