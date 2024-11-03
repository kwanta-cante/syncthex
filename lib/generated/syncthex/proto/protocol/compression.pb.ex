defmodule Syncthex.Proto.Protocol.Compression do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.EnumDescriptorProto{
      name: "Compression",
      value: [
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "COMPRESSION_METADATA",
          number: 0,
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "COMPRESSION_NEVER",
          number: 1,
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "COMPRESSION_ALWAYS",
          number: 2,
          options: nil,
          __unknown_fields__: []
        }
      ],
      options: nil,
      reserved_range: [],
      reserved_name: [],
      __unknown_fields__: []
    }
  end

  field :COMPRESSION_METADATA, 0
  field :COMPRESSION_NEVER, 1
  field :COMPRESSION_ALWAYS, 2
end