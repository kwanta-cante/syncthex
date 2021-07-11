defmodule Syncthex.Proto.Config.Tuning do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :TUNING_AUTO | :TUNING_SMALL | :TUNING_LARGE

  def descriptor do
    # credo:disable-for-next-line
    Elixir.Google.Protobuf.EnumDescriptorProto.decode(
      <<10, 6, 84, 117, 110, 105, 110, 103, 18, 15, 10, 11, 84, 85, 78, 73, 78, 71, 95, 65, 85,
        84, 79, 16, 0, 18, 16, 10, 12, 84, 85, 78, 73, 78, 71, 95, 83, 77, 65, 76, 76, 16, 1, 18,
        16, 10, 12, 84, 85, 78, 73, 78, 71, 95, 76, 65, 82, 71, 69, 16, 2, 26, 2, 24, 0>>
    )
  end

  def descriptor_plain do
    %Google.Protobuf.EnumDescriptorProto{
      name: "Tuning",
      options: %Google.Protobuf.EnumOptions{
        __pb_extensions__: %{},
        allow_alias: nil,
        deprecated: false,
        uninterpreted_option: []
      },
      reserved_name: [],
      reserved_range: [],
      value: [
        %Google.Protobuf.EnumValueDescriptorProto{name: "TUNING_AUTO", number: 0, options: nil},
        %Google.Protobuf.EnumValueDescriptorProto{name: "TUNING_SMALL", number: 1, options: nil},
        %Google.Protobuf.EnumValueDescriptorProto{name: "TUNING_LARGE", number: 2, options: nil}
      ]
    }
  end

  field :TUNING_AUTO, 0
  field :TUNING_SMALL, 1
  field :TUNING_LARGE, 2
end
