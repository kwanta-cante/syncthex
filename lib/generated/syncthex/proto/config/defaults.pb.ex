defmodule Syncthex.Proto.Config.Defaults do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "Defaults",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "folder",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".config.FolderConfiguration",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "folder",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "device",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".config.DeviceConfiguration",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "device",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "ignores",
          extendee: nil,
          number: 3,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".config.Ignores",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "ignores",
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

  field :folder, 1, type: Syncthex.Proto.Config.FolderConfiguration
  field :device, 2, type: Syncthex.Proto.Config.DeviceConfiguration
  field :ignores, 3, type: Syncthex.Proto.Config.Ignores
end