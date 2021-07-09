defmodule Syncthex.Proto.BlockPullOrder do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :BLOCK_PULL_ORDER_STANDARD
          | :BLOCK_PULL_ORDER_RANDOM
          | :BLOCK_PULL_ORDER_IN_ORDER

  field :BLOCK_PULL_ORDER_STANDARD, 0
  field :BLOCK_PULL_ORDER_RANDOM, 1
  field :BLOCK_PULL_ORDER_IN_ORDER, 2
end
