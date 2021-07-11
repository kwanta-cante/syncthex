defmodule Syncthex.Proto.Config.BlockPullOrder do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :BLOCK_PULL_ORDER_STANDARD
          | :BLOCK_PULL_ORDER_RANDOM
          | :BLOCK_PULL_ORDER_IN_ORDER

  def descriptor do
    # credo:disable-for-next-line
    Elixir.Google.Protobuf.EnumDescriptorProto.decode(
      <<10, 14, 66, 108, 111, 99, 107, 80, 117, 108, 108, 79, 114, 100, 101, 114, 18, 29, 10, 25,
        66, 76, 79, 67, 75, 95, 80, 85, 76, 76, 95, 79, 82, 68, 69, 82, 95, 83, 84, 65, 78, 68,
        65, 82, 68, 16, 0, 18, 27, 10, 23, 66, 76, 79, 67, 75, 95, 80, 85, 76, 76, 95, 79, 82, 68,
        69, 82, 95, 82, 65, 78, 68, 79, 77, 16, 1, 18, 29, 10, 25, 66, 76, 79, 67, 75, 95, 80, 85,
        76, 76, 95, 79, 82, 68, 69, 82, 95, 73, 78, 95, 79, 82, 68, 69, 82, 16, 2, 26, 2, 24, 0>>
    )
  end

  def descriptor_plain do
    %Google.Protobuf.EnumDescriptorProto{
      name: "BlockPullOrder",
      options: %Google.Protobuf.EnumOptions{
        __pb_extensions__: %{},
        allow_alias: nil,
        deprecated: false,
        uninterpreted_option: []
      },
      reserved_name: [],
      reserved_range: [],
      value: [
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "BLOCK_PULL_ORDER_STANDARD",
          number: 0,
          options: nil
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "BLOCK_PULL_ORDER_RANDOM",
          number: 1,
          options: nil
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "BLOCK_PULL_ORDER_IN_ORDER",
          number: 2,
          options: nil
        }
      ]
    }
  end

  field :BLOCK_PULL_ORDER_STANDARD, 0
  field :BLOCK_PULL_ORDER_RANDOM, 1
  field :BLOCK_PULL_ORDER_IN_ORDER, 2
end
