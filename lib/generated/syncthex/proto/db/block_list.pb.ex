defmodule Syncthex.Proto.Db.BlockList do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "BlockList",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "blocks",
          extendee: nil,
          number: 1,
          label: :LABEL_REPEATED,
          type: :TYPE_MESSAGE,
          type_name: ".protocol.BlockInfo",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "blocks",
          proto3_optional: nil,
          __unknown_fields__: []
        }
      ],
      nested_type: [],
      enum_type: [],
      extension_range: [],
      extension: [],
      options: nil,
      oneof_decl: [],
      reserved_range: [],
      reserved_name: [],
      __unknown_fields__: []
    }
  end

  field :blocks, 1, repeated: true, type: Syncthex.Proto.Protocol.BlockInfo
end