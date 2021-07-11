defmodule Syncthex.Proto.Db.FileVersion do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          version: Syncthex.Proto.Protocol.Vector.t() | nil,
          deleted: boolean,
          devices: binary,
          invalid_devices: binary
        }

  defstruct [:version, :deleted, :devices, :invalid_devices]

  def descriptor do
    # credo:disable-for-next-line
    Elixir.Google.Protobuf.DescriptorProto.decode(
      <<10, 11, 70, 105, 108, 101, 86, 101, 114, 115, 105, 111, 110, 18, 42, 10, 7, 118, 101, 114,
        115, 105, 111, 110, 24, 1, 32, 1, 40, 11, 50, 16, 46, 112, 114, 111, 116, 111, 99, 111,
        108, 46, 86, 101, 99, 116, 111, 114, 82, 7, 118, 101, 114, 115, 105, 111, 110, 18, 24, 10,
        7, 100, 101, 108, 101, 116, 101, 100, 24, 2, 32, 1, 40, 8, 82, 7, 100, 101, 108, 101, 116,
        101, 100, 18, 24, 10, 7, 100, 101, 118, 105, 99, 101, 115, 24, 3, 32, 3, 40, 12, 82, 7,
        100, 101, 118, 105, 99, 101, 115, 18, 39, 10, 15, 105, 110, 118, 97, 108, 105, 100, 95,
        100, 101, 118, 105, 99, 101, 115, 24, 4, 32, 3, 40, 12, 82, 14, 105, 110, 118, 97, 108,
        105, 100, 68, 101, 118, 105, 99, 101, 115>>
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
          options: nil,
          proto3_optional: nil,
          type: :TYPE_MESSAGE,
          type_name: ".protocol.Vector"
        },
        %Google.Protobuf.FieldDescriptorProto{
          default_value: nil,
          extendee: nil,
          json_name: "deleted",
          label: :LABEL_OPTIONAL,
          name: "deleted",
          number: 2,
          oneof_index: nil,
          options: nil,
          proto3_optional: nil,
          type: :TYPE_BOOL,
          type_name: nil
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
          type: :TYPE_BYTES,
          type_name: nil
        },
        %Google.Protobuf.FieldDescriptorProto{
          default_value: nil,
          extendee: nil,
          json_name: "invalidDevices",
          label: :LABEL_REPEATED,
          name: "invalid_devices",
          number: 4,
          oneof_index: nil,
          options: nil,
          proto3_optional: nil,
          type: :TYPE_BYTES,
          type_name: nil
        }
      ],
      name: "FileVersion",
      nested_type: [],
      oneof_decl: [],
      options: nil,
      reserved_name: [],
      reserved_range: []
    }
  end

  field :version, 1, type: Syncthex.Proto.Protocol.Vector
  field :deleted, 2, type: :bool
  field :devices, 3, repeated: true, type: :bytes
  field :invalid_devices, 4, repeated: true, type: :bytes, json_name: "invalidDevices"
end

defmodule Syncthex.Proto.Db.VersionList do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          versions: [Syncthex.Proto.Db.FileVersion.t()]
        }

  defstruct [:versions]

  def descriptor do
    # credo:disable-for-next-line
    Elixir.Google.Protobuf.DescriptorProto.decode(
      <<10, 11, 86, 101, 114, 115, 105, 111, 110, 76, 105, 115, 116, 18, 51, 10, 8, 118, 101, 114,
        115, 105, 111, 110, 115, 24, 1, 32, 3, 40, 11, 50, 15, 46, 100, 98, 46, 70, 105, 108, 101,
        86, 101, 114, 115, 105, 111, 110, 66, 6, 24, 0, 40, 0, 80, 0, 82, 8, 118, 101, 114, 115,
        105, 111, 110, 115, 58, 6, 8, 0, 16, 0, 24, 0>>
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
          json_name: "versions",
          label: :LABEL_REPEATED,
          name: "versions",
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
          type: :TYPE_MESSAGE,
          type_name: ".db.FileVersion"
        }
      ],
      name: "VersionList",
      nested_type: [],
      oneof_decl: [],
      options: %Google.Protobuf.MessageOptions{
        __pb_extensions__: %{},
        deprecated: false,
        map_entry: nil,
        message_set_wire_format: false,
        no_standard_descriptor_accessor: false,
        uninterpreted_option: []
      },
      reserved_name: [],
      reserved_range: []
    }
  end

  field :versions, 1, repeated: true, type: Syncthex.Proto.Db.FileVersion
end

defmodule Syncthex.Proto.Db.FileInfoTruncated do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          size: integer,
          modified_s: integer,
          modified_by: non_neg_integer,
          version: Syncthex.Proto.Protocol.Vector.t() | nil,
          sequence: integer,
          symlink_target: String.t(),
          blocks_hash: binary,
          encrypted: binary,
          type: Syncthex.Proto.Protocol.FileInfoType.t(),
          permissions: non_neg_integer,
          modified_ns: integer,
          block_size: integer,
          local_flags: non_neg_integer,
          version_hash: binary,
          deleted: boolean,
          invalid: boolean,
          no_permissions: boolean
        }

  defstruct [
    :name,
    :size,
    :modified_s,
    :modified_by,
    :version,
    :sequence,
    :symlink_target,
    :blocks_hash,
    :encrypted,
    :type,
    :permissions,
    :modified_ns,
    :block_size,
    :local_flags,
    :version_hash,
    :deleted,
    :invalid,
    :no_permissions
  ]

  def descriptor do
    # credo:disable-for-next-line
    Elixir.Google.Protobuf.DescriptorProto.decode(
      <<10, 17, 70, 105, 108, 101, 73, 110, 102, 111, 84, 114, 117, 110, 99, 97, 116, 101, 100,
        18, 18, 10, 4, 110, 97, 109, 101, 24, 1, 32, 1, 40, 9, 82, 4, 110, 97, 109, 101, 18, 18,
        10, 4, 115, 105, 122, 101, 24, 3, 32, 1, 40, 3, 82, 4, 115, 105, 122, 101, 18, 29, 10, 10,
        109, 111, 100, 105, 102, 105, 101, 100, 95, 115, 24, 5, 32, 1, 40, 3, 82, 9, 109, 111,
        100, 105, 102, 105, 101, 100, 83, 18, 39, 10, 11, 109, 111, 100, 105, 102, 105, 101, 100,
        95, 98, 121, 24, 12, 32, 1, 40, 4, 66, 6, 24, 0, 40, 0, 80, 0, 82, 10, 109, 111, 100, 105,
        102, 105, 101, 100, 66, 121, 18, 42, 10, 7, 118, 101, 114, 115, 105, 111, 110, 24, 9, 32,
        1, 40, 11, 50, 16, 46, 112, 114, 111, 116, 111, 99, 111, 108, 46, 86, 101, 99, 116, 111,
        114, 82, 7, 118, 101, 114, 115, 105, 111, 110, 18, 26, 10, 8, 115, 101, 113, 117, 101,
        110, 99, 101, 24, 10, 32, 1, 40, 3, 82, 8, 115, 101, 113, 117, 101, 110, 99, 101, 18, 37,
        10, 14, 115, 121, 109, 108, 105, 110, 107, 95, 116, 97, 114, 103, 101, 116, 24, 17, 32, 1,
        40, 9, 82, 13, 115, 121, 109, 108, 105, 110, 107, 84, 97, 114, 103, 101, 116, 18, 31, 10,
        11, 98, 108, 111, 99, 107, 115, 95, 104, 97, 115, 104, 24, 18, 32, 1, 40, 12, 82, 10, 98,
        108, 111, 99, 107, 115, 72, 97, 115, 104, 18, 28, 10, 9, 101, 110, 99, 114, 121, 112, 116,
        101, 100, 24, 19, 32, 1, 40, 12, 82, 9, 101, 110, 99, 114, 121, 112, 116, 101, 100, 18,
        42, 10, 4, 116, 121, 112, 101, 24, 2, 32, 1, 40, 14, 50, 22, 46, 112, 114, 111, 116, 111,
        99, 111, 108, 46, 70, 105, 108, 101, 73, 110, 102, 111, 84, 121, 112, 101, 82, 4, 116,
        121, 112, 101, 18, 32, 10, 11, 112, 101, 114, 109, 105, 115, 115, 105, 111, 110, 115, 24,
        4, 32, 1, 40, 13, 82, 11, 112, 101, 114, 109, 105, 115, 115, 105, 111, 110, 115, 18, 31,
        10, 11, 109, 111, 100, 105, 102, 105, 101, 100, 95, 110, 115, 24, 11, 32, 1, 40, 5, 82,
        10, 109, 111, 100, 105, 102, 105, 101, 100, 78, 115, 18, 37, 10, 10, 98, 108, 111, 99,
        107, 95, 115, 105, 122, 101, 24, 13, 32, 1, 40, 5, 66, 6, 24, 0, 40, 0, 80, 0, 82, 9, 98,
        108, 111, 99, 107, 83, 105, 122, 101, 18, 32, 10, 11, 108, 111, 99, 97, 108, 95, 102, 108,
        97, 103, 115, 24, 232, 7, 32, 1, 40, 13, 82, 10, 108, 111, 99, 97, 108, 70, 108, 97, 103,
        115, 18, 34, 10, 12, 118, 101, 114, 115, 105, 111, 110, 95, 104, 97, 115, 104, 24, 233, 7,
        32, 1, 40, 12, 82, 11, 118, 101, 114, 115, 105, 111, 110, 72, 97, 115, 104, 18, 24, 10, 7,
        100, 101, 108, 101, 116, 101, 100, 24, 6, 32, 1, 40, 8, 82, 7, 100, 101, 108, 101, 116,
        101, 100, 18, 32, 10, 7, 105, 110, 118, 97, 108, 105, 100, 24, 7, 32, 1, 40, 8, 66, 6, 24,
        0, 40, 0, 80, 0, 82, 7, 105, 110, 118, 97, 108, 105, 100, 18, 37, 10, 14, 110, 111, 95,
        112, 101, 114, 109, 105, 115, 115, 105, 111, 110, 115, 24, 8, 32, 1, 40, 8, 82, 13, 110,
        111, 80, 101, 114, 109, 105, 115, 115, 105, 111, 110, 115, 58, 6, 8, 0, 16, 0, 24, 0>>
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
          json_name: "name",
          label: :LABEL_OPTIONAL,
          name: "name",
          number: 1,
          oneof_index: nil,
          options: nil,
          proto3_optional: nil,
          type: :TYPE_STRING,
          type_name: nil
        },
        %Google.Protobuf.FieldDescriptorProto{
          default_value: nil,
          extendee: nil,
          json_name: "size",
          label: :LABEL_OPTIONAL,
          name: "size",
          number: 3,
          oneof_index: nil,
          options: nil,
          proto3_optional: nil,
          type: :TYPE_INT64,
          type_name: nil
        },
        %Google.Protobuf.FieldDescriptorProto{
          default_value: nil,
          extendee: nil,
          json_name: "modifiedS",
          label: :LABEL_OPTIONAL,
          name: "modified_s",
          number: 5,
          oneof_index: nil,
          options: nil,
          proto3_optional: nil,
          type: :TYPE_INT64,
          type_name: nil
        },
        %Google.Protobuf.FieldDescriptorProto{
          default_value: nil,
          extendee: nil,
          json_name: "modifiedBy",
          label: :LABEL_OPTIONAL,
          name: "modified_by",
          number: 12,
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
          type: :TYPE_UINT64,
          type_name: nil
        },
        %Google.Protobuf.FieldDescriptorProto{
          default_value: nil,
          extendee: nil,
          json_name: "version",
          label: :LABEL_OPTIONAL,
          name: "version",
          number: 9,
          oneof_index: nil,
          options: nil,
          proto3_optional: nil,
          type: :TYPE_MESSAGE,
          type_name: ".protocol.Vector"
        },
        %Google.Protobuf.FieldDescriptorProto{
          default_value: nil,
          extendee: nil,
          json_name: "sequence",
          label: :LABEL_OPTIONAL,
          name: "sequence",
          number: 10,
          oneof_index: nil,
          options: nil,
          proto3_optional: nil,
          type: :TYPE_INT64,
          type_name: nil
        },
        %Google.Protobuf.FieldDescriptorProto{
          default_value: nil,
          extendee: nil,
          json_name: "symlinkTarget",
          label: :LABEL_OPTIONAL,
          name: "symlink_target",
          number: 17,
          oneof_index: nil,
          options: nil,
          proto3_optional: nil,
          type: :TYPE_STRING,
          type_name: nil
        },
        %Google.Protobuf.FieldDescriptorProto{
          default_value: nil,
          extendee: nil,
          json_name: "blocksHash",
          label: :LABEL_OPTIONAL,
          name: "blocks_hash",
          number: 18,
          oneof_index: nil,
          options: nil,
          proto3_optional: nil,
          type: :TYPE_BYTES,
          type_name: nil
        },
        %Google.Protobuf.FieldDescriptorProto{
          default_value: nil,
          extendee: nil,
          json_name: "encrypted",
          label: :LABEL_OPTIONAL,
          name: "encrypted",
          number: 19,
          oneof_index: nil,
          options: nil,
          proto3_optional: nil,
          type: :TYPE_BYTES,
          type_name: nil
        },
        %Google.Protobuf.FieldDescriptorProto{
          default_value: nil,
          extendee: nil,
          json_name: "type",
          label: :LABEL_OPTIONAL,
          name: "type",
          number: 2,
          oneof_index: nil,
          options: nil,
          proto3_optional: nil,
          type: :TYPE_ENUM,
          type_name: ".protocol.FileInfoType"
        },
        %Google.Protobuf.FieldDescriptorProto{
          default_value: nil,
          extendee: nil,
          json_name: "permissions",
          label: :LABEL_OPTIONAL,
          name: "permissions",
          number: 4,
          oneof_index: nil,
          options: nil,
          proto3_optional: nil,
          type: :TYPE_UINT32,
          type_name: nil
        },
        %Google.Protobuf.FieldDescriptorProto{
          default_value: nil,
          extendee: nil,
          json_name: "modifiedNs",
          label: :LABEL_OPTIONAL,
          name: "modified_ns",
          number: 11,
          oneof_index: nil,
          options: nil,
          proto3_optional: nil,
          type: :TYPE_INT32,
          type_name: nil
        },
        %Google.Protobuf.FieldDescriptorProto{
          default_value: nil,
          extendee: nil,
          json_name: "blockSize",
          label: :LABEL_OPTIONAL,
          name: "block_size",
          number: 13,
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
          json_name: "localFlags",
          label: :LABEL_OPTIONAL,
          name: "local_flags",
          number: 1000,
          oneof_index: nil,
          options: nil,
          proto3_optional: nil,
          type: :TYPE_UINT32,
          type_name: nil
        },
        %Google.Protobuf.FieldDescriptorProto{
          default_value: nil,
          extendee: nil,
          json_name: "versionHash",
          label: :LABEL_OPTIONAL,
          name: "version_hash",
          number: 1001,
          oneof_index: nil,
          options: nil,
          proto3_optional: nil,
          type: :TYPE_BYTES,
          type_name: nil
        },
        %Google.Protobuf.FieldDescriptorProto{
          default_value: nil,
          extendee: nil,
          json_name: "deleted",
          label: :LABEL_OPTIONAL,
          name: "deleted",
          number: 6,
          oneof_index: nil,
          options: nil,
          proto3_optional: nil,
          type: :TYPE_BOOL,
          type_name: nil
        },
        %Google.Protobuf.FieldDescriptorProto{
          default_value: nil,
          extendee: nil,
          json_name: "invalid",
          label: :LABEL_OPTIONAL,
          name: "invalid",
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
          json_name: "noPermissions",
          label: :LABEL_OPTIONAL,
          name: "no_permissions",
          number: 8,
          oneof_index: nil,
          options: nil,
          proto3_optional: nil,
          type: :TYPE_BOOL,
          type_name: nil
        }
      ],
      name: "FileInfoTruncated",
      nested_type: [],
      oneof_decl: [],
      options: %Google.Protobuf.MessageOptions{
        __pb_extensions__: %{},
        deprecated: false,
        map_entry: nil,
        message_set_wire_format: false,
        no_standard_descriptor_accessor: false,
        uninterpreted_option: []
      },
      reserved_name: [],
      reserved_range: []
    }
  end

  field :name, 1, type: :string
  field :size, 3, type: :int64
  field :modified_s, 5, type: :int64, json_name: "modifiedS"
  field :modified_by, 12, type: :uint64, json_name: "modifiedBy"
  field :version, 9, type: Syncthex.Proto.Protocol.Vector
  field :sequence, 10, type: :int64
  field :symlink_target, 17, type: :string, json_name: "symlinkTarget"
  field :blocks_hash, 18, type: :bytes, json_name: "blocksHash"
  field :encrypted, 19, type: :bytes
  field :type, 2, type: Syncthex.Proto.Protocol.FileInfoType, enum: true
  field :permissions, 4, type: :uint32
  field :modified_ns, 11, type: :int32, json_name: "modifiedNs"
  field :block_size, 13, type: :int32, json_name: "blockSize"
  field :local_flags, 1000, type: :uint32, json_name: "localFlags"
  field :version_hash, 1001, type: :bytes, json_name: "versionHash"
  field :deleted, 6, type: :bool
  field :invalid, 7, type: :bool
  field :no_permissions, 8, type: :bool, json_name: "noPermissions"
end

defmodule Syncthex.Proto.Db.BlockList do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          blocks: [Syncthex.Proto.Protocol.BlockInfo.t()]
        }

  defstruct [:blocks]

  def descriptor do
    # credo:disable-for-next-line
    Elixir.Google.Protobuf.DescriptorProto.decode(
      <<10, 9, 66, 108, 111, 99, 107, 76, 105, 115, 116, 18, 43, 10, 6, 98, 108, 111, 99, 107,
        115, 24, 1, 32, 3, 40, 11, 50, 19, 46, 112, 114, 111, 116, 111, 99, 111, 108, 46, 66, 108,
        111, 99, 107, 73, 110, 102, 111, 82, 6, 98, 108, 111, 99, 107, 115>>
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
          json_name: "blocks",
          label: :LABEL_REPEATED,
          name: "blocks",
          number: 1,
          oneof_index: nil,
          options: nil,
          proto3_optional: nil,
          type: :TYPE_MESSAGE,
          type_name: ".protocol.BlockInfo"
        }
      ],
      name: "BlockList",
      nested_type: [],
      oneof_decl: [],
      options: nil,
      reserved_name: [],
      reserved_range: []
    }
  end

  field :blocks, 1, repeated: true, type: Syncthex.Proto.Protocol.BlockInfo
end

defmodule Syncthex.Proto.Db.IndirectionHashesOnly do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          blocks_hash: binary,
          version_hash: binary
        }

  defstruct [:blocks_hash, :version_hash]

  def descriptor do
    # credo:disable-for-next-line
    Elixir.Google.Protobuf.DescriptorProto.decode(
      <<10, 21, 73, 110, 100, 105, 114, 101, 99, 116, 105, 111, 110, 72, 97, 115, 104, 101, 115,
        79, 110, 108, 121, 18, 31, 10, 11, 98, 108, 111, 99, 107, 115, 95, 104, 97, 115, 104, 24,
        18, 32, 1, 40, 12, 82, 10, 98, 108, 111, 99, 107, 115, 72, 97, 115, 104, 18, 34, 10, 12,
        118, 101, 114, 115, 105, 111, 110, 95, 104, 97, 115, 104, 24, 233, 7, 32, 1, 40, 12, 82,
        11, 118, 101, 114, 115, 105, 111, 110, 72, 97, 115, 104>>
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
          json_name: "blocksHash",
          label: :LABEL_OPTIONAL,
          name: "blocks_hash",
          number: 18,
          oneof_index: nil,
          options: nil,
          proto3_optional: nil,
          type: :TYPE_BYTES,
          type_name: nil
        },
        %Google.Protobuf.FieldDescriptorProto{
          default_value: nil,
          extendee: nil,
          json_name: "versionHash",
          label: :LABEL_OPTIONAL,
          name: "version_hash",
          number: 1001,
          oneof_index: nil,
          options: nil,
          proto3_optional: nil,
          type: :TYPE_BYTES,
          type_name: nil
        }
      ],
      name: "IndirectionHashesOnly",
      nested_type: [],
      oneof_decl: [],
      options: nil,
      reserved_name: [],
      reserved_range: []
    }
  end

  field :blocks_hash, 18, type: :bytes, json_name: "blocksHash"
  field :version_hash, 1001, type: :bytes, json_name: "versionHash"
end

defmodule Syncthex.Proto.Db.Counts do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          files: integer,
          directories: integer,
          symlinks: integer,
          deleted: integer,
          bytes: integer,
          sequence: integer,
          device_id: binary,
          local_flags: non_neg_integer
        }

  defstruct [
    :files,
    :directories,
    :symlinks,
    :deleted,
    :bytes,
    :sequence,
    :device_id,
    :local_flags
  ]

  def descriptor do
    # credo:disable-for-next-line
    Elixir.Google.Protobuf.DescriptorProto.decode(
      <<10, 6, 67, 111, 117, 110, 116, 115, 18, 20, 10, 5, 102, 105, 108, 101, 115, 24, 1, 32, 1,
        40, 5, 82, 5, 102, 105, 108, 101, 115, 18, 32, 10, 11, 100, 105, 114, 101, 99, 116, 111,
        114, 105, 101, 115, 24, 2, 32, 1, 40, 5, 82, 11, 100, 105, 114, 101, 99, 116, 111, 114,
        105, 101, 115, 18, 26, 10, 8, 115, 121, 109, 108, 105, 110, 107, 115, 24, 3, 32, 1, 40, 5,
        82, 8, 115, 121, 109, 108, 105, 110, 107, 115, 18, 24, 10, 7, 100, 101, 108, 101, 116,
        101, 100, 24, 4, 32, 1, 40, 5, 82, 7, 100, 101, 108, 101, 116, 101, 100, 18, 20, 10, 5,
        98, 121, 116, 101, 115, 24, 5, 32, 1, 40, 3, 82, 5, 98, 121, 116, 101, 115, 18, 26, 10, 8,
        115, 101, 113, 117, 101, 110, 99, 101, 24, 6, 32, 1, 40, 3, 82, 8, 115, 101, 113, 117,
        101, 110, 99, 101, 18, 35, 10, 9, 100, 101, 118, 105, 99, 101, 95, 105, 100, 24, 17, 32,
        1, 40, 12, 66, 6, 24, 0, 40, 0, 80, 0, 82, 8, 100, 101, 118, 105, 99, 101, 73, 100, 18,
        31, 10, 11, 108, 111, 99, 97, 108, 95, 102, 108, 97, 103, 115, 24, 18, 32, 1, 40, 13, 82,
        10, 108, 111, 99, 97, 108, 70, 108, 97, 103, 115, 58, 6, 8, 0, 16, 0, 24, 0>>
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
          json_name: "files",
          label: :LABEL_OPTIONAL,
          name: "files",
          number: 1,
          oneof_index: nil,
          options: nil,
          proto3_optional: nil,
          type: :TYPE_INT32,
          type_name: nil
        },
        %Google.Protobuf.FieldDescriptorProto{
          default_value: nil,
          extendee: nil,
          json_name: "directories",
          label: :LABEL_OPTIONAL,
          name: "directories",
          number: 2,
          oneof_index: nil,
          options: nil,
          proto3_optional: nil,
          type: :TYPE_INT32,
          type_name: nil
        },
        %Google.Protobuf.FieldDescriptorProto{
          default_value: nil,
          extendee: nil,
          json_name: "symlinks",
          label: :LABEL_OPTIONAL,
          name: "symlinks",
          number: 3,
          oneof_index: nil,
          options: nil,
          proto3_optional: nil,
          type: :TYPE_INT32,
          type_name: nil
        },
        %Google.Protobuf.FieldDescriptorProto{
          default_value: nil,
          extendee: nil,
          json_name: "deleted",
          label: :LABEL_OPTIONAL,
          name: "deleted",
          number: 4,
          oneof_index: nil,
          options: nil,
          proto3_optional: nil,
          type: :TYPE_INT32,
          type_name: nil
        },
        %Google.Protobuf.FieldDescriptorProto{
          default_value: nil,
          extendee: nil,
          json_name: "bytes",
          label: :LABEL_OPTIONAL,
          name: "bytes",
          number: 5,
          oneof_index: nil,
          options: nil,
          proto3_optional: nil,
          type: :TYPE_INT64,
          type_name: nil
        },
        %Google.Protobuf.FieldDescriptorProto{
          default_value: nil,
          extendee: nil,
          json_name: "sequence",
          label: :LABEL_OPTIONAL,
          name: "sequence",
          number: 6,
          oneof_index: nil,
          options: nil,
          proto3_optional: nil,
          type: :TYPE_INT64,
          type_name: nil
        },
        %Google.Protobuf.FieldDescriptorProto{
          default_value: nil,
          extendee: nil,
          json_name: "deviceId",
          label: :LABEL_OPTIONAL,
          name: "device_id",
          number: 17,
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
          json_name: "localFlags",
          label: :LABEL_OPTIONAL,
          name: "local_flags",
          number: 18,
          oneof_index: nil,
          options: nil,
          proto3_optional: nil,
          type: :TYPE_UINT32,
          type_name: nil
        }
      ],
      name: "Counts",
      nested_type: [],
      oneof_decl: [],
      options: %Google.Protobuf.MessageOptions{
        __pb_extensions__: %{},
        deprecated: false,
        map_entry: nil,
        message_set_wire_format: false,
        no_standard_descriptor_accessor: false,
        uninterpreted_option: []
      },
      reserved_name: [],
      reserved_range: []
    }
  end

  field :files, 1, type: :int32
  field :directories, 2, type: :int32
  field :symlinks, 3, type: :int32
  field :deleted, 4, type: :int32
  field :bytes, 5, type: :int64
  field :sequence, 6, type: :int64
  field :device_id, 17, type: :bytes, json_name: "deviceId"
  field :local_flags, 18, type: :uint32, json_name: "localFlags"
end

defmodule Syncthex.Proto.Db.CountsSet do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          counts: [Syncthex.Proto.Db.Counts.t()],
          created: integer
        }

  defstruct [:counts, :created]

  def descriptor do
    # credo:disable-for-next-line
    Elixir.Google.Protobuf.DescriptorProto.decode(
      <<10, 9, 67, 111, 117, 110, 116, 115, 83, 101, 116, 18, 34, 10, 6, 99, 111, 117, 110, 116,
        115, 24, 1, 32, 3, 40, 11, 50, 10, 46, 100, 98, 46, 67, 111, 117, 110, 116, 115, 82, 6,
        99, 111, 117, 110, 116, 115, 18, 24, 10, 7, 99, 114, 101, 97, 116, 101, 100, 24, 2, 32, 1,
        40, 3, 82, 7, 99, 114, 101, 97, 116, 101, 100>>
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
          json_name: "counts",
          label: :LABEL_REPEATED,
          name: "counts",
          number: 1,
          oneof_index: nil,
          options: nil,
          proto3_optional: nil,
          type: :TYPE_MESSAGE,
          type_name: ".db.Counts"
        },
        %Google.Protobuf.FieldDescriptorProto{
          default_value: nil,
          extendee: nil,
          json_name: "created",
          label: :LABEL_OPTIONAL,
          name: "created",
          number: 2,
          oneof_index: nil,
          options: nil,
          proto3_optional: nil,
          type: :TYPE_INT64,
          type_name: nil
        }
      ],
      name: "CountsSet",
      nested_type: [],
      oneof_decl: [],
      options: nil,
      reserved_name: [],
      reserved_range: []
    }
  end

  field :counts, 1, repeated: true, type: Syncthex.Proto.Db.Counts
  field :created, 2, type: :int64
end

defmodule Syncthex.Proto.Db.FileVersionDeprecated do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          version: Syncthex.Proto.Protocol.Vector.t() | nil,
          device: binary,
          invalid: boolean,
          deleted: boolean
        }

  defstruct [:version, :device, :invalid, :deleted]

  def descriptor do
    # credo:disable-for-next-line
    Elixir.Google.Protobuf.DescriptorProto.decode(
      <<10, 21, 70, 105, 108, 101, 86, 101, 114, 115, 105, 111, 110, 68, 101, 112, 114, 101, 99,
        97, 116, 101, 100, 18, 42, 10, 7, 118, 101, 114, 115, 105, 111, 110, 24, 1, 32, 1, 40, 11,
        50, 16, 46, 112, 114, 111, 116, 111, 99, 111, 108, 46, 86, 101, 99, 116, 111, 114, 82, 7,
        118, 101, 114, 115, 105, 111, 110, 18, 22, 10, 6, 100, 101, 118, 105, 99, 101, 24, 2, 32,
        1, 40, 12, 82, 6, 100, 101, 118, 105, 99, 101, 18, 24, 10, 7, 105, 110, 118, 97, 108, 105,
        100, 24, 3, 32, 1, 40, 8, 82, 7, 105, 110, 118, 97, 108, 105, 100, 18, 24, 10, 7, 100,
        101, 108, 101, 116, 101, 100, 24, 4, 32, 1, 40, 8, 82, 7, 100, 101, 108, 101, 116, 101,
        100>>
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
          options: nil,
          proto3_optional: nil,
          type: :TYPE_MESSAGE,
          type_name: ".protocol.Vector"
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
          type: :TYPE_BYTES,
          type_name: nil
        },
        %Google.Protobuf.FieldDescriptorProto{
          default_value: nil,
          extendee: nil,
          json_name: "invalid",
          label: :LABEL_OPTIONAL,
          name: "invalid",
          number: 3,
          oneof_index: nil,
          options: nil,
          proto3_optional: nil,
          type: :TYPE_BOOL,
          type_name: nil
        },
        %Google.Protobuf.FieldDescriptorProto{
          default_value: nil,
          extendee: nil,
          json_name: "deleted",
          label: :LABEL_OPTIONAL,
          name: "deleted",
          number: 4,
          oneof_index: nil,
          options: nil,
          proto3_optional: nil,
          type: :TYPE_BOOL,
          type_name: nil
        }
      ],
      name: "FileVersionDeprecated",
      nested_type: [],
      oneof_decl: [],
      options: nil,
      reserved_name: [],
      reserved_range: []
    }
  end

  field :version, 1, type: Syncthex.Proto.Protocol.Vector
  field :device, 2, type: :bytes
  field :invalid, 3, type: :bool
  field :deleted, 4, type: :bool
end

defmodule Syncthex.Proto.Db.VersionListDeprecated do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          versions: [Syncthex.Proto.Db.FileVersionDeprecated.t()]
        }

  defstruct [:versions]

  def descriptor do
    # credo:disable-for-next-line
    Elixir.Google.Protobuf.DescriptorProto.decode(
      <<10, 21, 86, 101, 114, 115, 105, 111, 110, 76, 105, 115, 116, 68, 101, 112, 114, 101, 99,
        97, 116, 101, 100, 18, 53, 10, 8, 118, 101, 114, 115, 105, 111, 110, 115, 24, 1, 32, 3,
        40, 11, 50, 25, 46, 100, 98, 46, 70, 105, 108, 101, 86, 101, 114, 115, 105, 111, 110, 68,
        101, 112, 114, 101, 99, 97, 116, 101, 100, 82, 8, 118, 101, 114, 115, 105, 111, 110, 115,
        58, 6, 8, 0, 16, 0, 24, 0>>
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
          json_name: "versions",
          label: :LABEL_REPEATED,
          name: "versions",
          number: 1,
          oneof_index: nil,
          options: nil,
          proto3_optional: nil,
          type: :TYPE_MESSAGE,
          type_name: ".db.FileVersionDeprecated"
        }
      ],
      name: "VersionListDeprecated",
      nested_type: [],
      oneof_decl: [],
      options: %Google.Protobuf.MessageOptions{
        __pb_extensions__: %{},
        deprecated: false,
        map_entry: nil,
        message_set_wire_format: false,
        no_standard_descriptor_accessor: false,
        uninterpreted_option: []
      },
      reserved_name: [],
      reserved_range: []
    }
  end

  field :versions, 1, repeated: true, type: Syncthex.Proto.Db.FileVersionDeprecated
end

defmodule Syncthex.Proto.Db.ObservedFolder do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          time: Google.Protobuf.Timestamp.t() | nil,
          label: String.t(),
          receive_encrypted: boolean,
          remote_encrypted: boolean
        }

  defstruct [:time, :label, :receive_encrypted, :remote_encrypted]

  def descriptor do
    # credo:disable-for-next-line
    Elixir.Google.Protobuf.DescriptorProto.decode(
      <<10, 14, 79, 98, 115, 101, 114, 118, 101, 100, 70, 111, 108, 100, 101, 114, 18, 54, 10, 4,
        116, 105, 109, 101, 24, 1, 32, 1, 40, 11, 50, 26, 46, 103, 111, 111, 103, 108, 101, 46,
        112, 114, 111, 116, 111, 98, 117, 102, 46, 84, 105, 109, 101, 115, 116, 97, 109, 112, 66,
        6, 24, 0, 40, 0, 80, 0, 82, 4, 116, 105, 109, 101, 18, 20, 10, 5, 108, 97, 98, 101, 108,
        24, 2, 32, 1, 40, 9, 82, 5, 108, 97, 98, 101, 108, 18, 43, 10, 17, 114, 101, 99, 101, 105,
        118, 101, 95, 101, 110, 99, 114, 121, 112, 116, 101, 100, 24, 3, 32, 1, 40, 8, 82, 16,
        114, 101, 99, 101, 105, 118, 101, 69, 110, 99, 114, 121, 112, 116, 101, 100, 18, 41, 10,
        16, 114, 101, 109, 111, 116, 101, 95, 101, 110, 99, 114, 121, 112, 116, 101, 100, 24, 4,
        32, 1, 40, 8, 82, 15, 114, 101, 109, 111, 116, 101, 69, 110, 99, 114, 121, 112, 116, 101,
        100>>
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
          json_name: "time",
          label: :LABEL_OPTIONAL,
          name: "time",
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
          type: :TYPE_MESSAGE,
          type_name: ".google.protobuf.Timestamp"
        },
        %Google.Protobuf.FieldDescriptorProto{
          default_value: nil,
          extendee: nil,
          json_name: "label",
          label: :LABEL_OPTIONAL,
          name: "label",
          number: 2,
          oneof_index: nil,
          options: nil,
          proto3_optional: nil,
          type: :TYPE_STRING,
          type_name: nil
        },
        %Google.Protobuf.FieldDescriptorProto{
          default_value: nil,
          extendee: nil,
          json_name: "receiveEncrypted",
          label: :LABEL_OPTIONAL,
          name: "receive_encrypted",
          number: 3,
          oneof_index: nil,
          options: nil,
          proto3_optional: nil,
          type: :TYPE_BOOL,
          type_name: nil
        },
        %Google.Protobuf.FieldDescriptorProto{
          default_value: nil,
          extendee: nil,
          json_name: "remoteEncrypted",
          label: :LABEL_OPTIONAL,
          name: "remote_encrypted",
          number: 4,
          oneof_index: nil,
          options: nil,
          proto3_optional: nil,
          type: :TYPE_BOOL,
          type_name: nil
        }
      ],
      name: "ObservedFolder",
      nested_type: [],
      oneof_decl: [],
      options: nil,
      reserved_name: [],
      reserved_range: []
    }
  end

  field :time, 1, type: Google.Protobuf.Timestamp
  field :label, 2, type: :string
  field :receive_encrypted, 3, type: :bool, json_name: "receiveEncrypted"
  field :remote_encrypted, 4, type: :bool, json_name: "remoteEncrypted"
end

defmodule Syncthex.Proto.Db.ObservedDevice do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          time: Google.Protobuf.Timestamp.t() | nil,
          name: String.t(),
          address: String.t()
        }

  defstruct [:time, :name, :address]

  def descriptor do
    # credo:disable-for-next-line
    Elixir.Google.Protobuf.DescriptorProto.decode(
      <<10, 14, 79, 98, 115, 101, 114, 118, 101, 100, 68, 101, 118, 105, 99, 101, 18, 54, 10, 4,
        116, 105, 109, 101, 24, 1, 32, 1, 40, 11, 50, 26, 46, 103, 111, 111, 103, 108, 101, 46,
        112, 114, 111, 116, 111, 98, 117, 102, 46, 84, 105, 109, 101, 115, 116, 97, 109, 112, 66,
        6, 24, 0, 40, 0, 80, 0, 82, 4, 116, 105, 109, 101, 18, 18, 10, 4, 110, 97, 109, 101, 24,
        2, 32, 1, 40, 9, 82, 4, 110, 97, 109, 101, 18, 24, 10, 7, 97, 100, 100, 114, 101, 115,
        115, 24, 3, 32, 1, 40, 9, 82, 7, 97, 100, 100, 114, 101, 115, 115>>
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
          json_name: "time",
          label: :LABEL_OPTIONAL,
          name: "time",
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
          type: :TYPE_MESSAGE,
          type_name: ".google.protobuf.Timestamp"
        },
        %Google.Protobuf.FieldDescriptorProto{
          default_value: nil,
          extendee: nil,
          json_name: "name",
          label: :LABEL_OPTIONAL,
          name: "name",
          number: 2,
          oneof_index: nil,
          options: nil,
          proto3_optional: nil,
          type: :TYPE_STRING,
          type_name: nil
        },
        %Google.Protobuf.FieldDescriptorProto{
          default_value: nil,
          extendee: nil,
          json_name: "address",
          label: :LABEL_OPTIONAL,
          name: "address",
          number: 3,
          oneof_index: nil,
          options: nil,
          proto3_optional: nil,
          type: :TYPE_STRING,
          type_name: nil
        }
      ],
      name: "ObservedDevice",
      nested_type: [],
      oneof_decl: [],
      options: nil,
      reserved_name: [],
      reserved_range: []
    }
  end

  field :time, 1, type: Google.Protobuf.Timestamp
  field :name, 2, type: :string
  field :address, 3, type: :string
end
