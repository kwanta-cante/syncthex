defmodule Syncthex.Proto.Config.PullOrder do
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

  def descriptor do
    # credo:disable-for-next-line
    Elixir.Google.Protobuf.EnumDescriptorProto.decode(
      <<10, 9, 80, 117, 108, 108, 79, 114, 100, 101, 114, 18, 21, 10, 17, 80, 85, 76, 76, 95, 79,
        82, 68, 69, 82, 95, 82, 65, 78, 68, 79, 77, 16, 0, 18, 25, 10, 21, 80, 85, 76, 76, 95, 79,
        82, 68, 69, 82, 95, 65, 76, 80, 72, 65, 66, 69, 84, 73, 67, 16, 1, 18, 29, 10, 25, 80, 85,
        76, 76, 95, 79, 82, 68, 69, 82, 95, 83, 77, 65, 76, 76, 69, 83, 84, 95, 70, 73, 82, 83,
        84, 16, 2, 18, 28, 10, 24, 80, 85, 76, 76, 95, 79, 82, 68, 69, 82, 95, 76, 65, 82, 71, 69,
        83, 84, 95, 70, 73, 82, 83, 84, 16, 3, 18, 27, 10, 23, 80, 85, 76, 76, 95, 79, 82, 68, 69,
        82, 95, 79, 76, 68, 69, 83, 84, 95, 70, 73, 82, 83, 84, 16, 4, 18, 27, 10, 23, 80, 85, 76,
        76, 95, 79, 82, 68, 69, 82, 95, 78, 69, 87, 69, 83, 84, 95, 70, 73, 82, 83, 84, 16, 5, 26,
        2, 24, 0>>
    )
  end

  def descriptor_plain do
    %Google.Protobuf.EnumDescriptorProto{
      name: "PullOrder",
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
          name: "PULL_ORDER_RANDOM",
          number: 0,
          options: nil
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "PULL_ORDER_ALPHABETIC",
          number: 1,
          options: nil
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "PULL_ORDER_SMALLEST_FIRST",
          number: 2,
          options: nil
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "PULL_ORDER_LARGEST_FIRST",
          number: 3,
          options: nil
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "PULL_ORDER_OLDEST_FIRST",
          number: 4,
          options: nil
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "PULL_ORDER_NEWEST_FIRST",
          number: 5,
          options: nil
        }
      ]
    }
  end

  field :PULL_ORDER_RANDOM, 0
  field :PULL_ORDER_ALPHABETIC, 1
  field :PULL_ORDER_SMALLEST_FIRST, 2
  field :PULL_ORDER_LARGEST_FIRST, 3
  field :PULL_ORDER_OLDEST_FIRST, 4
  field :PULL_ORDER_NEWEST_FIRST, 5
end
