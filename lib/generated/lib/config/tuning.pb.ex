defmodule Syncthex.Proto.Tuning do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :TUNING_AUTO | :TUNING_SMALL | :TUNING_LARGE

  field :TUNING_AUTO, 0
  field :TUNING_SMALL, 1
  field :TUNING_LARGE, 2
end
