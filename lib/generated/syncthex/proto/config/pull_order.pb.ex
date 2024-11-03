defmodule Syncthex.Proto.Config.PullOrder do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.EnumDescriptorProto{
      name: "PullOrder",
      value: [
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "PULL_ORDER_RANDOM",
          number: 0,
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "PULL_ORDER_ALPHABETIC",
          number: 1,
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "PULL_ORDER_SMALLEST_FIRST",
          number: 2,
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "PULL_ORDER_LARGEST_FIRST",
          number: 3,
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "PULL_ORDER_OLDEST_FIRST",
          number: 4,
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "PULL_ORDER_NEWEST_FIRST",
          number: 5,
          options: nil,
          __unknown_fields__: []
        }
      ],
      options: %Google.Protobuf.EnumOptions{
        allow_alias: nil,
        deprecated: false,
        deprecated_legacy_json_field_conflicts: nil,
        uninterpreted_option: [],
        __pb_extensions__: %{},
        __unknown_fields__: [{62021, 0, 0}]
      },
      reserved_range: [],
      reserved_name: [],
      __unknown_fields__: []
    }
  end

  field :PULL_ORDER_RANDOM, 0
  field :PULL_ORDER_ALPHABETIC, 1
  field :PULL_ORDER_SMALLEST_FIRST, 2
  field :PULL_ORDER_LARGEST_FIRST, 3
  field :PULL_ORDER_OLDEST_FIRST, 4
  field :PULL_ORDER_NEWEST_FIRST, 5
end