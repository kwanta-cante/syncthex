defmodule Syncthex.Proto.Config.FolderDeviceConfiguration do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "FolderDeviceConfiguration",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "device_id",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_BYTES,
          type_name: nil,
          default_value: nil,
          options: %Google.Protobuf.FieldOptions{
            ctype: :STRING,
            packed: nil,
            deprecated: false,
            lazy: false,
            jstype: :JS_NORMAL,
            weak: false,
            unverified_lazy: false,
            debug_redact: false,
            uninterpreted_option: [],
            __pb_extensions__: %{},
            __unknown_fields__: [
              {75010, 2, "DeviceID"},
              {75005, 2, "id,attr"},
              {75006, 2, "deviceID"},
              {75009, 0, 1}
            ]
          },
          oneof_index: nil,
          json_name: "deviceId",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "introduced_by",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_BYTES,
          type_name: nil,
          default_value: nil,
          options: %Google.Protobuf.FieldOptions{
            ctype: :STRING,
            packed: nil,
            deprecated: false,
            lazy: false,
            jstype: :JS_NORMAL,
            weak: false,
            unverified_lazy: false,
            debug_redact: false,
            uninterpreted_option: [],
            __pb_extensions__: %{},
            __unknown_fields__: [{75005, 2, "introducedBy,attr"}, {75009, 0, 1}]
          },
          oneof_index: nil,
          json_name: "introducedBy",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "encryption_password",
          extendee: nil,
          number: 3,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "encryptionPassword",
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

  field :device_id, 1, type: :bytes, json_name: "deviceId", deprecated: false
  field :introduced_by, 2, type: :bytes, json_name: "introducedBy", deprecated: false
  field :encryption_password, 3, type: :string, json_name: "encryptionPassword"
end