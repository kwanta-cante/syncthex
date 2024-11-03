defmodule Syncthex.Proto.Config.Configuration do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "Configuration",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "version",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_INT32,
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
            __unknown_fields__: [{75005, 2, "version,attr"}]
          },
          oneof_index: nil,
          json_name: "version",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "folders",
          extendee: nil,
          number: 2,
          label: :LABEL_REPEATED,
          type: :TYPE_MESSAGE,
          type_name: ".config.FolderConfiguration",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "folders",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "devices",
          extendee: nil,
          number: 3,
          label: :LABEL_REPEATED,
          type: :TYPE_MESSAGE,
          type_name: ".config.DeviceConfiguration",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "devices",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "gui",
          extendee: nil,
          number: 4,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".config.GUIConfiguration",
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
            __unknown_fields__: [{75010, 2, "GUI"}]
          },
          oneof_index: nil,
          json_name: "gui",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "ldap",
          extendee: nil,
          number: 5,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".config.LDAPConfiguration",
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
            __unknown_fields__: [{75010, 2, "LDAP"}]
          },
          oneof_index: nil,
          json_name: "ldap",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "options",
          extendee: nil,
          number: 6,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".config.OptionsConfiguration",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "options",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "ignored_devices",
          extendee: nil,
          number: 7,
          label: :LABEL_REPEATED,
          type: :TYPE_MESSAGE,
          type_name: ".config.ObservedDevice",
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
              {75006, 2, "remoteIgnoredDevices"},
              {75005, 2, "remoteIgnoredDevice"}
            ]
          },
          oneof_index: nil,
          json_name: "ignoredDevices",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "pending_devices",
          extendee: nil,
          number: 8,
          label: :LABEL_REPEATED,
          type: :TYPE_MESSAGE,
          type_name: ".config.ObservedDevice",
          default_value: nil,
          options: %Google.Protobuf.FieldOptions{
            ctype: :STRING,
            packed: nil,
            deprecated: true,
            lazy: false,
            jstype: :JS_NORMAL,
            weak: false,
            unverified_lazy: false,
            debug_redact: false,
            uninterpreted_option: [],
            __pb_extensions__: %{},
            __unknown_fields__: []
          },
          oneof_index: nil,
          json_name: "pendingDevices",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "defaults",
          extendee: nil,
          number: 9,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".config.Defaults",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "defaults",
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

  field :version, 1, type: :int32, deprecated: false
  field :folders, 2, repeated: true, type: Syncthex.Proto.Config.FolderConfiguration
  field :devices, 3, repeated: true, type: Syncthex.Proto.Config.DeviceConfiguration
  field :gui, 4, type: Syncthex.Proto.Config.GUIConfiguration, deprecated: false
  field :ldap, 5, type: Syncthex.Proto.Config.LDAPConfiguration, deprecated: false
  field :options, 6, type: Syncthex.Proto.Config.OptionsConfiguration

  field :ignored_devices, 7,
    repeated: true,
    type: Syncthex.Proto.Config.ObservedDevice,
    json_name: "ignoredDevices",
    deprecated: false

  field :pending_devices, 8,
    repeated: true,
    type: Syncthex.Proto.Config.ObservedDevice,
    json_name: "pendingDevices",
    deprecated: true

  field :defaults, 9, type: Syncthex.Proto.Config.Defaults
end