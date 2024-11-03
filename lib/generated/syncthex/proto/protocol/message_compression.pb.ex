defmodule Syncthex.Proto.Protocol.MessageCompression do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.EnumDescriptorProto{
      name: "MessageCompression",
      value: [
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "MESSAGE_COMPRESSION_NONE",
          number: 0,
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "MESSAGE_COMPRESSION_LZ4",
          number: 1,
          options: %Google.Protobuf.EnumValueOptions{
            deprecated: false,
            uninterpreted_option: [],
            __pb_extensions__: %{},
            __unknown_fields__: [{76010, 2, "MessageCompressionLZ4"}]
          },
          __unknown_fields__: []
        }
      ],
      options: nil,
      reserved_range: [],
      reserved_name: [],
      __unknown_fields__: []
    }
  end

  field :MESSAGE_COMPRESSION_NONE, 0
  field :MESSAGE_COMPRESSION_LZ4, 1
end