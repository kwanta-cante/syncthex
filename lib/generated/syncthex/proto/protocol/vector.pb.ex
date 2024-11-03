defmodule Syncthex.Proto.Protocol.Vector do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "Vector",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "counters",
          extendee: nil,
          number: 1,
          label: :LABEL_REPEATED,
          type: :TYPE_MESSAGE,
          type_name: ".protocol.Counter",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "counters",
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

  field :counters, 1, repeated: true, type: Syncthex.Proto.Protocol.Counter
end