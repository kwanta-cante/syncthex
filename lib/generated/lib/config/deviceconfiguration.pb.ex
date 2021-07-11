defmodule Syncthex.Proto.Config.DeviceConfiguration do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          device_id: binary,
          name: String.t(),
          addresses: String.t(),
          compression: Syncthex.Proto.Protocol.Compression.t(),
          cert_name: String.t(),
          introducer: boolean,
          skip_introduction_removals: boolean,
          introduced_by: binary,
          paused: boolean,
          allowed_networks: String.t(),
          auto_accept_folders: boolean,
          max_send_kbps: integer,
          max_recv_kbps: integer,
          ignored_folders: [Syncthex.Proto.Config.ObservedFolder.t()],
          pending_folders: [Syncthex.Proto.Config.ObservedFolder.t()],
          max_request_kib: integer,
          untrusted: boolean,
          remote_gui_port: integer
        }

  defstruct [
    :device_id,
    :name,
    :addresses,
    :compression,
    :cert_name,
    :introducer,
    :skip_introduction_removals,
    :introduced_by,
    :paused,
    :allowed_networks,
    :auto_accept_folders,
    :max_send_kbps,
    :max_recv_kbps,
    :ignored_folders,
    :pending_folders,
    :max_request_kib,
    :untrusted,
    :remote_gui_port
  ]

  def descriptor do
    # credo:disable-for-next-line
    Elixir.Google.Protobuf.DescriptorProto.decode(
      <<10, 19, 68, 101, 118, 105, 99, 101, 67, 111, 110, 102, 105, 103, 117, 114, 97, 116, 105,
        111, 110, 18, 35, 10, 9, 100, 101, 118, 105, 99, 101, 95, 105, 100, 24, 1, 32, 1, 40, 12,
        66, 6, 24, 0, 40, 0, 80, 0, 82, 8, 100, 101, 118, 105, 99, 101, 73, 68, 18, 26, 10, 4,
        110, 97, 109, 101, 24, 2, 32, 1, 40, 9, 66, 6, 24, 0, 40, 0, 80, 0, 82, 4, 110, 97, 109,
        101, 18, 36, 10, 9, 97, 100, 100, 114, 101, 115, 115, 101, 115, 24, 3, 32, 3, 40, 9, 66,
        6, 24, 0, 40, 0, 80, 0, 82, 9, 97, 100, 100, 114, 101, 115, 115, 101, 115, 18, 63, 10, 11,
        99, 111, 109, 112, 114, 101, 115, 115, 105, 111, 110, 24, 4, 32, 1, 40, 14, 50, 21, 46,
        112, 114, 111, 116, 111, 99, 111, 108, 46, 67, 111, 109, 112, 114, 101, 115, 115, 105,
        111, 110, 66, 6, 24, 0, 40, 0, 80, 0, 82, 11, 99, 111, 109, 112, 114, 101, 115, 115, 105,
        111, 110, 18, 35, 10, 9, 99, 101, 114, 116, 95, 110, 97, 109, 101, 24, 5, 32, 1, 40, 9,
        66, 6, 24, 0, 40, 0, 80, 0, 82, 8, 99, 101, 114, 116, 78, 97, 109, 101, 18, 38, 10, 10,
        105, 110, 116, 114, 111, 100, 117, 99, 101, 114, 24, 6, 32, 1, 40, 8, 66, 6, 24, 0, 40, 0,
        80, 0, 82, 10, 105, 110, 116, 114, 111, 100, 117, 99, 101, 114, 18, 68, 10, 26, 115, 107,
        105, 112, 95, 105, 110, 116, 114, 111, 100, 117, 99, 116, 105, 111, 110, 95, 114, 101,
        109, 111, 118, 97, 108, 115, 24, 7, 32, 1, 40, 8, 66, 6, 24, 0, 40, 0, 80, 0, 82, 24, 115,
        107, 105, 112, 73, 110, 116, 114, 111, 100, 117, 99, 116, 105, 111, 110, 82, 101, 109,
        111, 118, 97, 108, 115, 18, 43, 10, 13, 105, 110, 116, 114, 111, 100, 117, 99, 101, 100,
        95, 98, 121, 24, 8, 32, 1, 40, 12, 66, 6, 24, 0, 40, 0, 80, 0, 82, 12, 105, 110, 116, 114,
        111, 100, 117, 99, 101, 100, 66, 121, 18, 22, 10, 6, 112, 97, 117, 115, 101, 100, 24, 9,
        32, 1, 40, 8, 82, 6, 112, 97, 117, 115, 101, 100, 18, 49, 10, 16, 97, 108, 108, 111, 119,
        101, 100, 95, 110, 101, 116, 119, 111, 114, 107, 115, 24, 10, 32, 3, 40, 9, 66, 6, 24, 0,
        40, 0, 80, 0, 82, 15, 97, 108, 108, 111, 119, 101, 100, 78, 101, 116, 119, 111, 114, 107,
        115, 18, 46, 10, 19, 97, 117, 116, 111, 95, 97, 99, 99, 101, 112, 116, 95, 102, 111, 108,
        100, 101, 114, 115, 24, 11, 32, 1, 40, 8, 82, 17, 97, 117, 116, 111, 65, 99, 99, 101, 112,
        116, 70, 111, 108, 100, 101, 114, 115, 18, 34, 10, 13, 109, 97, 120, 95, 115, 101, 110,
        100, 95, 107, 98, 112, 115, 24, 12, 32, 1, 40, 5, 82, 11, 109, 97, 120, 83, 101, 110, 100,
        75, 98, 112, 115, 18, 34, 10, 13, 109, 97, 120, 95, 114, 101, 99, 118, 95, 107, 98, 112,
        115, 24, 13, 32, 1, 40, 5, 82, 11, 109, 97, 120, 82, 101, 99, 118, 75, 98, 112, 115, 18,
        63, 10, 15, 105, 103, 110, 111, 114, 101, 100, 95, 102, 111, 108, 100, 101, 114, 115, 24,
        14, 32, 3, 40, 11, 50, 22, 46, 99, 111, 110, 102, 105, 103, 46, 79, 98, 115, 101, 114,
        118, 101, 100, 70, 111, 108, 100, 101, 114, 82, 14, 105, 103, 110, 111, 114, 101, 100, 70,
        111, 108, 100, 101, 114, 115, 18, 71, 10, 15, 112, 101, 110, 100, 105, 110, 103, 95, 102,
        111, 108, 100, 101, 114, 115, 24, 15, 32, 3, 40, 11, 50, 22, 46, 99, 111, 110, 102, 105,
        103, 46, 79, 98, 115, 101, 114, 118, 101, 100, 70, 111, 108, 100, 101, 114, 66, 6, 24, 1,
        40, 0, 80, 0, 82, 14, 112, 101, 110, 100, 105, 110, 103, 70, 111, 108, 100, 101, 114, 115,
        18, 46, 10, 15, 109, 97, 120, 95, 114, 101, 113, 117, 101, 115, 116, 95, 107, 105, 98, 24,
        16, 32, 1, 40, 5, 66, 6, 24, 0, 40, 0, 80, 0, 82, 13, 109, 97, 120, 82, 101, 113, 117,
        101, 115, 116, 75, 105, 66, 18, 28, 10, 9, 117, 110, 116, 114, 117, 115, 116, 101, 100,
        24, 17, 32, 1, 40, 8, 82, 9, 117, 110, 116, 114, 117, 115, 116, 101, 100, 18, 46, 10, 15,
        114, 101, 109, 111, 116, 101, 95, 103, 117, 105, 95, 112, 111, 114, 116, 24, 18, 32, 1,
        40, 5, 66, 6, 24, 0, 40, 0, 80, 0, 82, 13, 114, 101, 109, 111, 116, 101, 71, 85, 73, 80,
        111, 114, 116>>
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
          json_name: "deviceID",
          label: :LABEL_OPTIONAL,
          name: "device_id",
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
          type: :TYPE_BYTES,
          type_name: nil
        },
        %Google.Protobuf.FieldDescriptorProto{
          default_value: nil,
          extendee: nil,
          json_name: "name",
          label: :LABEL_OPTIONAL,
          name: "name",
          number: 2,
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
          type: :TYPE_STRING,
          type_name: nil
        },
        %Google.Protobuf.FieldDescriptorProto{
          default_value: nil,
          extendee: nil,
          json_name: "addresses",
          label: :LABEL_REPEATED,
          name: "addresses",
          number: 3,
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
          type: :TYPE_STRING,
          type_name: nil
        },
        %Google.Protobuf.FieldDescriptorProto{
          default_value: nil,
          extendee: nil,
          json_name: "compression",
          label: :LABEL_OPTIONAL,
          name: "compression",
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
          type: :TYPE_ENUM,
          type_name: ".protocol.Compression"
        },
        %Google.Protobuf.FieldDescriptorProto{
          default_value: nil,
          extendee: nil,
          json_name: "certName",
          label: :LABEL_OPTIONAL,
          name: "cert_name",
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
          type: :TYPE_STRING,
          type_name: nil
        },
        %Google.Protobuf.FieldDescriptorProto{
          default_value: nil,
          extendee: nil,
          json_name: "introducer",
          label: :LABEL_OPTIONAL,
          name: "introducer",
          number: 6,
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
          type: :TYPE_BOOL,
          type_name: nil
        },
        %Google.Protobuf.FieldDescriptorProto{
          default_value: nil,
          extendee: nil,
          json_name: "skipIntroductionRemovals",
          label: :LABEL_OPTIONAL,
          name: "skip_introduction_removals",
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
          type: :TYPE_BOOL,
          type_name: nil
        },
        %Google.Protobuf.FieldDescriptorProto{
          default_value: nil,
          extendee: nil,
          json_name: "introducedBy",
          label: :LABEL_OPTIONAL,
          name: "introduced_by",
          number: 8,
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
          type: :TYPE_BYTES,
          type_name: nil
        },
        %Google.Protobuf.FieldDescriptorProto{
          default_value: nil,
          extendee: nil,
          json_name: "paused",
          label: :LABEL_OPTIONAL,
          name: "paused",
          number: 9,
          oneof_index: nil,
          options: nil,
          proto3_optional: nil,
          type: :TYPE_BOOL,
          type_name: nil
        },
        %Google.Protobuf.FieldDescriptorProto{
          default_value: nil,
          extendee: nil,
          json_name: "allowedNetworks",
          label: :LABEL_REPEATED,
          name: "allowed_networks",
          number: 10,
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
          type: :TYPE_STRING,
          type_name: nil
        },
        %Google.Protobuf.FieldDescriptorProto{
          default_value: nil,
          extendee: nil,
          json_name: "autoAcceptFolders",
          label: :LABEL_OPTIONAL,
          name: "auto_accept_folders",
          number: 11,
          oneof_index: nil,
          options: nil,
          proto3_optional: nil,
          type: :TYPE_BOOL,
          type_name: nil
        },
        %Google.Protobuf.FieldDescriptorProto{
          default_value: nil,
          extendee: nil,
          json_name: "maxSendKbps",
          label: :LABEL_OPTIONAL,
          name: "max_send_kbps",
          number: 12,
          oneof_index: nil,
          options: nil,
          proto3_optional: nil,
          type: :TYPE_INT32,
          type_name: nil
        },
        %Google.Protobuf.FieldDescriptorProto{
          default_value: nil,
          extendee: nil,
          json_name: "maxRecvKbps",
          label: :LABEL_OPTIONAL,
          name: "max_recv_kbps",
          number: 13,
          oneof_index: nil,
          options: nil,
          proto3_optional: nil,
          type: :TYPE_INT32,
          type_name: nil
        },
        %Google.Protobuf.FieldDescriptorProto{
          default_value: nil,
          extendee: nil,
          json_name: "ignoredFolders",
          label: :LABEL_REPEATED,
          name: "ignored_folders",
          number: 14,
          oneof_index: nil,
          options: nil,
          proto3_optional: nil,
          type: :TYPE_MESSAGE,
          type_name: ".config.ObservedFolder"
        },
        %Google.Protobuf.FieldDescriptorProto{
          default_value: nil,
          extendee: nil,
          json_name: "pendingFolders",
          label: :LABEL_REPEATED,
          name: "pending_folders",
          number: 15,
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
          type_name: ".config.ObservedFolder"
        },
        %Google.Protobuf.FieldDescriptorProto{
          default_value: nil,
          extendee: nil,
          json_name: "maxRequestKiB",
          label: :LABEL_OPTIONAL,
          name: "max_request_kib",
          number: 16,
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
          json_name: "untrusted",
          label: :LABEL_OPTIONAL,
          name: "untrusted",
          number: 17,
          oneof_index: nil,
          options: nil,
          proto3_optional: nil,
          type: :TYPE_BOOL,
          type_name: nil
        },
        %Google.Protobuf.FieldDescriptorProto{
          default_value: nil,
          extendee: nil,
          json_name: "remoteGUIPort",
          label: :LABEL_OPTIONAL,
          name: "remote_gui_port",
          number: 18,
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
        }
      ],
      name: "DeviceConfiguration",
      nested_type: [],
      oneof_decl: [],
      options: nil,
      reserved_name: [],
      reserved_range: []
    }
  end

  field :device_id, 1, type: :bytes, json_name: "deviceID"
  field :name, 2, type: :string
  field :addresses, 3, repeated: true, type: :string
  field :compression, 4, type: Syncthex.Proto.Protocol.Compression, enum: true
  field :cert_name, 5, type: :string, json_name: "certName"
  field :introducer, 6, type: :bool
  field :skip_introduction_removals, 7, type: :bool, json_name: "skipIntroductionRemovals"
  field :introduced_by, 8, type: :bytes, json_name: "introducedBy"
  field :paused, 9, type: :bool
  field :allowed_networks, 10, repeated: true, type: :string, json_name: "allowedNetworks"
  field :auto_accept_folders, 11, type: :bool, json_name: "autoAcceptFolders"
  field :max_send_kbps, 12, type: :int32, json_name: "maxSendKbps"
  field :max_recv_kbps, 13, type: :int32, json_name: "maxRecvKbps"

  field :ignored_folders, 14,
    repeated: true,
    type: Syncthex.Proto.Config.ObservedFolder,
    json_name: "ignoredFolders"

  field :pending_folders, 15,
    repeated: true,
    type: Syncthex.Proto.Config.ObservedFolder,
    deprecated: true,
    json_name: "pendingFolders"

  field :max_request_kib, 16, type: :int32, json_name: "maxRequestKiB"
  field :untrusted, 17, type: :bool
  field :remote_gui_port, 18, type: :int32, json_name: "remoteGUIPort"
end
