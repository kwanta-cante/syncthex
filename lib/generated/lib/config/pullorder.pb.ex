defmodule Syncthex.Proto.PullOrder do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :PULL_ORDER_RANDOM
          | :PULL_ORDER_ALPHABETIC
          | :PULL_ORDER_SMALLEST_FIRST
          | :PULL_ORDER_LARGEST_FIRST
          | :PULL_ORDER_OLDEST_FIRST
          | :PULL_ORDER_NEWEST_FIRST

  field :PULL_ORDER_RANDOM, 0
  field :PULL_ORDER_ALPHABETIC, 1
  field :PULL_ORDER_SMALLEST_FIRST, 2
  field :PULL_ORDER_LARGEST_FIRST, 3
  field :PULL_ORDER_OLDEST_FIRST, 4
  field :PULL_ORDER_NEWEST_FIRST, 5
end
