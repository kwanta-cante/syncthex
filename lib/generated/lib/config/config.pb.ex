defmodule Syncthex.Proto.Config.Configuration do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          version: integer,
          folders: [Syncthex.Proto.Config.FolderConfiguration.t()],
          devices: [Syncthex.Proto.Config.DeviceConfiguration.t()],
          gui: Syncthex.Proto.Config.GUIConfiguration.t() | nil,
          ldap: Syncthex.Proto.Config.LDAPConfiguration.t() | nil,
          options: Syncthex.Proto.Config.OptionsConfiguration.t() | nil,
          ignored_devices: [Syncthex.Proto.Config.ObservedDevice.t()],
          pending_devices: [Syncthex.Proto.Config.ObservedDevice.t()],
          defaults: Syncthex.Proto.Config.Defaults.t() | nil
        }

  defstruct [
    :version,
    :folders,
    :devices,
    :gui,
    :ldap,
    :options,
    :ignored_devices,
    :pending_devices,
    :defaults
  ]

  def descriptor do
    # credo:disable-for-next-line
    Elixir.Google.Protobuf.DescriptorProto.decode(
      <<10, 13, 67, 111, 110, 102, 105, 103, 117, 114, 97, 116, 105, 111, 110, 18, 32, 10, 7, 118,
        101, 114, 115, 105, 111, 110, 24, 1, 32, 1, 40, 5, 66, 6, 24, 0, 40, 0, 80, 0, 82, 7, 118,
        101, 114, 115, 105, 111, 110, 18, 53, 10, 7, 102, 111, 108, 100, 101, 114, 115, 24, 2, 32,
        3, 40, 11, 50, 27, 46, 99, 111, 110, 102, 105, 103, 46, 70, 111, 108, 100, 101, 114, 67,
        111, 110, 102, 105, 103, 117, 114, 97, 116, 105, 111, 110, 82, 7, 102, 111, 108, 100, 101,
        114, 115, 18, 53, 10, 7, 100, 101, 118, 105, 99, 101, 115, 24, 3, 32, 3, 40, 11, 50, 27,
        46, 99, 111, 110, 102, 105, 103, 46, 68, 101, 118, 105, 99, 101, 67, 111, 110, 102, 105,
        103, 117, 114, 97, 116, 105, 111, 110, 82, 7, 100, 101, 118, 105, 99, 101, 115, 18, 50,
        10, 3, 103, 117, 105, 24, 4, 32, 1, 40, 11, 50, 24, 46, 99, 111, 110, 102, 105, 103, 46,
        71, 85, 73, 67, 111, 110, 102, 105, 103, 117, 114, 97, 116, 105, 111, 110, 66, 6, 24, 0,
        40, 0, 80, 0, 82, 3, 103, 117, 105, 18, 53, 10, 4, 108, 100, 97, 112, 24, 5, 32, 1, 40,
        11, 50, 25, 46, 99, 111, 110, 102, 105, 103, 46, 76, 68, 65, 80, 67, 111, 110, 102, 105,
        103, 117, 114, 97, 116, 105, 111, 110, 66, 6, 24, 0, 40, 0, 80, 0, 82, 4, 108, 100, 97,
        112, 18, 54, 10, 7, 111, 112, 116, 105, 111, 110, 115, 24, 6, 32, 1, 40, 11, 50, 28, 46,
        99, 111, 110, 102, 105, 103, 46, 79, 112, 116, 105, 111, 110, 115, 67, 111, 110, 102, 105,
        103, 117, 114, 97, 116, 105, 111, 110, 82, 7, 111, 112, 116, 105, 111, 110, 115, 18, 77,
        10, 15, 105, 103, 110, 111, 114, 101, 100, 95, 100, 101, 118, 105, 99, 101, 115, 24, 7,
        32, 3, 40, 11, 50, 22, 46, 99, 111, 110, 102, 105, 103, 46, 79, 98, 115, 101, 114, 118,
        101, 100, 68, 101, 118, 105, 99, 101, 66, 6, 24, 0, 40, 0, 80, 0, 82, 20, 114, 101, 109,
        111, 116, 101, 73, 103, 110, 111, 114, 101, 100, 68, 101, 118, 105, 99, 101, 115, 18, 71,
        10, 15, 112, 101, 110, 100, 105, 110, 103, 95, 100, 101, 118, 105, 99, 101, 115, 24, 8,
        32, 3, 40, 11, 50, 22, 46, 99, 111, 110, 102, 105, 103, 46, 79, 98, 115, 101, 114, 118,
        101, 100, 68, 101, 118, 105, 99, 101, 66, 6, 24, 1, 40, 0, 80, 0, 82, 14, 112, 101, 110,
        100, 105, 110, 103, 68, 101, 118, 105, 99, 101, 115, 18, 44, 10, 8, 100, 101, 102, 97,
        117, 108, 116, 115, 24, 9, 32, 1, 40, 11, 50, 16, 46, 99, 111, 110, 102, 105, 103, 46, 68,
        101, 102, 97, 117, 108, 116, 115, 82, 8, 100, 101, 102, 97, 117, 108, 116, 115>>
    )
  end

  def descriptor_plain do
    %Google.Protobuf.DescriptorProto{
      enum_type: [],
      extension: [],
      extension_range: [],
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          default_value: nil,
          extendee: nil,
          json_name: "version",
          label: :LABEL_OPTIONAL,
          name: "version",
          number: 1,
          oneof_index: nil,
          options: %Google.Protobuf.FieldOptions{
            __pb_extensions__: %{},
            ctype: :STRING,
            deprecated: false,
            jstype: :JS_NORMAL,
            lazy: false,
            packed: nil,
            uninterpreted_option: [],
            weak: false
          },
          proto3_optional: nil,
          type: :TYPE_INT32,
          type_name: nil
        },
        %Google.Protobuf.FieldDescriptorProto{
          default_value: nil,
          extendee: nil,
          json_name: "folders",
          label: :LABEL_REPEATED,
          name: "folders",
          number: 2,
          oneof_index: nil,
          options: nil,
          proto3_optional: nil,
          type: :TYPE_MESSAGE,
          type_name: ".config.FolderConfiguration"
        },
        %Google.Protobuf.FieldDescriptorProto{
          default_value: nil,
          extendee: nil,
          json_name: "devices",
          label: :LABEL_REPEATED,
          name: "devices",
          number: 3,
          oneof_index: nil,
          options: nil,
          proto3_optional: nil,
          type: :TYPE_MESSAGE,
          type_name: ".config.DeviceConfiguration"
        },
        %Google.Protobuf.FieldDescriptorProto{
          default_value: nil,
          extendee: nil,
          json_name: "gui",
          label: :LABEL_OPTIONAL,
          name: "gui",
          number: 4,
          oneof_index: nil,
          options: %Google.Protobuf.FieldOptions{
            __pb_extensions__: %{},
            ctype: :STRING,
            deprecated: false,
            jstype: :JS_NORMAL,
            lazy: false,
            packed: nil,
            uninterpreted_option: [],
            weak: false
          },
          proto3_optional: nil,
          type: :TYPE_MESSAGE,
          type_name: ".config.GUIConfiguration"
        },
        %Google.Protobuf.FieldDescriptorProto{
          default_value: nil,
          extendee: nil,
          json_name: "ldap",
          label: :LABEL_OPTIONAL,
          name: "ldap",
          number: 5,
          oneof_index: nil,
          options: %Google.Protobuf.FieldOptions{
            __pb_extensions__: %{},
            ctype: :STRING,
            deprecated: false,
            jstype: :JS_NORMAL,
            lazy: false,
            packed: nil,
            uninterpreted_option: [],
            weak: false
          },
          proto3_optional: nil,
          type: :TYPE_MESSAGE,
          type_name: ".config.LDAPConfiguration"
        },
        %Google.Protobuf.FieldDescriptorProto{
          default_value: nil,
          extendee: nil,
          json_name: "options",
          label: :LABEL_OPTIONAL,
          name: "options",
          number: 6,
          oneof_index: nil,
          options: nil,
          proto3_optional: nil,
          type: :TYPE_MESSAGE,
          type_name: ".config.OptionsConfiguration"
        },
        %Google.Protobuf.FieldDescriptorProto{
          default_value: nil,
          extendee: nil,
          json_name: "remoteIgnoredDevices",
          label: :LABEL_REPEATED,
          name: "ignored_devices",
          number: 7,
          oneof_index: nil,
          options: %Google.Protobuf.FieldOptions{
            __pb_extensions__: %{},
            ctype: :STRING,
            deprecated: false,
            jstype: :JS_NORMAL,
            lazy: false,
            packed: nil,
            uninterpreted_option: [],
            weak: false
          },
          proto3_optional: nil,
          type: :TYPE_MESSAGE,
          type_name: ".config.ObservedDevice"
        },
        %Google.Protobuf.FieldDescriptorProto{
          default_value: nil,
          extendee: nil,
          json_name: "pendingDevices",
          label: :LABEL_REPEATED,
          name: "pending_devices",
          number: 8,
          oneof_index: nil,
          options: %Google.Protobuf.FieldOptions{
            __pb_extensions__: %{},
            ctype: :STRING,
            deprecated: true,
            jstype: :JS_NORMAL,
            lazy: false,
            packed: nil,
            uninterpreted_option: [],
            weak: false
          },
          proto3_optional: nil,
          type: :TYPE_MESSAGE,
          type_name: ".config.ObservedDevice"
        },
        %Google.Protobuf.FieldDescriptorProto{
          default_value: nil,
          extendee: nil,
          json_name: "defaults",
          label: :LABEL_OPTIONAL,
          name: "defaults",
          number: 9,
          oneof_index: nil,
          options: nil,
          proto3_optional: nil,
          type: :TYPE_MESSAGE,
          type_name: ".config.Defaults"
        }
      ],
      name: "Configuration",
      nested_type: [],
      oneof_decl: [],
      options: nil,
      reserved_name: [],
      reserved_range: []
    }
  end

  field :version, 1, type: :int32
  field :folders, 2, repeated: true, type: Syncthex.Proto.Config.FolderConfiguration
  field :devices, 3, repeated: true, type: Syncthex.Proto.Config.DeviceConfiguration
  field :gui, 4, type: Syncthex.Proto.Config.GUIConfiguration
  field :ldap, 5, type: Syncthex.Proto.Config.LDAPConfiguration
  field :options, 6, type: Syncthex.Proto.Config.OptionsConfiguration

  field :ignored_devices, 7,
    repeated: true,
    type: Syncthex.Proto.Config.ObservedDevice,
    json_name: "remoteIgnoredDevices"

  field :pending_devices, 8,
    repeated: true,
    type: Syncthex.Proto.Config.ObservedDevice,
    deprecated: true,
    json_name: "pendingDevices"

  field :defaults, 9, type: Syncthex.Proto.Config.Defaults
end

defmodule Syncthex.Proto.Config.Defaults do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          folder: Syncthex.Proto.Config.FolderConfiguration.t() | nil,
          device: Syncthex.Proto.Config.DeviceConfiguration.t() | nil
        }

  defstruct [:folder, :device]

  def descriptor do
    # credo:disable-for-next-line
    Elixir.Google.Protobuf.DescriptorProto.decode(
      <<10, 8, 68, 101, 102, 97, 117, 108, 116, 115, 18, 51, 10, 6, 102, 111, 108, 100, 101, 114,
        24, 1, 32, 1, 40, 11, 50, 27, 46, 99, 111, 110, 102, 105, 103, 46, 70, 111, 108, 100, 101,
        114, 67, 111, 110, 102, 105, 103, 117, 114, 97, 116, 105, 111, 110, 82, 6, 102, 111, 108,
        100, 101, 114, 18, 51, 10, 6, 100, 101, 118, 105, 99, 101, 24, 2, 32, 1, 40, 11, 50, 27,
        46, 99, 111, 110, 102, 105, 103, 46, 68, 101, 118, 105, 99, 101, 67, 111, 110, 102, 105,
        103, 117, 114, 97, 116, 105, 111, 110, 82, 6, 100, 101, 118, 105, 99, 101>>
    )
  end

  def descriptor_plain do
    %Google.Protobuf.DescriptorProto{
      enum_type: [],
      extension: [],
      extension_range: [],
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          default_value: nil,
          extendee: nil,
          json_name: "folder",
          label: :LABEL_OPTIONAL,
          name: "folder",
          number: 1,
          oneof_index: nil,
          options: nil,
          proto3_optional: nil,
          type: :TYPE_MESSAGE,
          type_name: ".config.FolderConfiguration"
        },
        %Google.Protobuf.FieldDescriptorProto{
          default_value: nil,
          extendee: nil,
          json_name: "device",
          label: :LABEL_OPTIONAL,
          name: "device",
          number: 2,
          oneof_index: nil,
          options: nil,
          proto3_optional: nil,
          type: :TYPE_MESSAGE,
          type_name: ".config.DeviceConfiguration"
        }
      ],
      name: "Defaults",
      nested_type: [],
      oneof_decl: [],
      options: nil,
      reserved_name: [],
      reserved_range: []
    }
  end

  field :folder, 1, type: Syncthex.Proto.Config.FolderConfiguration
  field :device, 2, type: Syncthex.Proto.Config.DeviceConfiguration
end
