defmodule Syncthex.Proto.Protocol.WindowsData do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "WindowsData",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "owner_name",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "ownerName",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "owner_is_group",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_BOOL,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "ownerIsGroup",
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

  field :owner_name, 1, type: :string, json_name: "ownerName"
  field :owner_is_group, 2, type: :bool, json_name: "ownerIsGroup"
end