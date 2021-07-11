defmodule Syncthex.Proto.Config.FolderDeviceConfiguration do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          device_id: binary,
          introduced_by: binary,
          encryption_password: String.t()
        }

  defstruct [:device_id, :introduced_by, :encryption_password]

  def descriptor do
    # credo:disable-for-next-line
    Elixir.Google.Protobuf.DescriptorProto.decode(
      <<10, 25, 70, 111, 108, 100, 101, 114, 68, 101, 118, 105, 99, 101, 67, 111, 110, 102, 105,
        103, 117, 114, 97, 116, 105, 111, 110, 18, 35, 10, 9, 100, 101, 118, 105, 99, 101, 95,
        105, 100, 24, 1, 32, 1, 40, 12, 66, 6, 24, 0, 40, 0, 80, 0, 82, 8, 100, 101, 118, 105, 99,
        101, 73, 68, 18, 43, 10, 13, 105, 110, 116, 114, 111, 100, 117, 99, 101, 100, 95, 98, 121,
        24, 2, 32, 1, 40, 12, 66, 6, 24, 0, 40, 0, 80, 0, 82, 12, 105, 110, 116, 114, 111, 100,
        117, 99, 101, 100, 66, 121, 18, 47, 10, 19, 101, 110, 99, 114, 121, 112, 116, 105, 111,
        110, 95, 112, 97, 115, 115, 119, 111, 114, 100, 24, 3, 32, 1, 40, 9, 82, 18, 101, 110, 99,
        114, 121, 112, 116, 105, 111, 110, 80, 97, 115, 115, 119, 111, 114, 100>>
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
          json_name: "introducedBy",
          label: :LABEL_OPTIONAL,
          name: "introduced_by",
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
          type: :TYPE_BYTES,
          type_name: nil
        },
        %Google.Protobuf.FieldDescriptorProto{
          default_value: nil,
          extendee: nil,
          json_name: "encryptionPassword",
          label: :LABEL_OPTIONAL,
          name: "encryption_password",
          number: 3,
          oneof_index: nil,
          options: nil,
          proto3_optional: nil,
          type: :TYPE_STRING,
          type_name: nil
        }
      ],
      name: "FolderDeviceConfiguration",
      nested_type: [],
      oneof_decl: [],
      options: nil,
      reserved_name: [],
      reserved_range: []
    }
  end

  field :device_id, 1, type: :bytes, json_name: "deviceID"
  field :introduced_by, 2, type: :bytes, json_name: "introducedBy"
  field :encryption_password, 3, type: :string, json_name: "encryptionPassword"
end

defmodule Syncthex.Proto.Config.FolderConfiguration do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          id: String.t(),
          label: String.t(),
          filesystem_type: Syncthex.Proto.Fs.FilesystemType.t(),
          path: String.t(),
          type: Syncthex.Proto.Config.FolderType.t(),
          devices: [Syncthex.Proto.Config.FolderDeviceConfiguration.t()],
          rescan_interval_s: integer,
          fs_watcher_enabled: boolean,
          fs_watcher_delay_s: integer,
          ignore_perms: boolean,
          auto_normalize: boolean,
          min_disk_free: Syncthex.Proto.Config.Size.t() | nil,
          versioning: Syncthex.Proto.Config.VersioningConfiguration.t() | nil,
          copiers: integer,
          puller_max_pending_kib: integer,
          hashers: integer,
          order: Syncthex.Proto.Config.PullOrder.t(),
          ignore_delete: boolean,
          scan_progress_interval_s: integer,
          puller_pause_s: integer,
          max_conflicts: integer,
          disable_sparse_files: boolean,
          disable_temp_indexes: boolean,
          paused: boolean,
          weak_hash_threshold_pct: integer,
          marker_name: String.t(),
          copy_ownership_from_parent: boolean,
          mod_time_window_s: integer,
          max_concurrent_writes: integer,
          disable_fsync: boolean,
          block_pull_order: Syncthex.Proto.Config.BlockPullOrder.t(),
          copy_range_method: Syncthex.Proto.Fs.CopyRangeMethod.t(),
          case_sensitive_fs: boolean,
          follow_junctions: boolean,
          read_only: boolean,
          min_disk_free_pct: float | :infinity | :negative_infinity | :nan,
          pullers: integer
        }

  defstruct [
    :id,
    :label,
    :filesystem_type,
    :path,
    :type,
    :devices,
    :rescan_interval_s,
    :fs_watcher_enabled,
    :fs_watcher_delay_s,
    :ignore_perms,
    :auto_normalize,
    :min_disk_free,
    :versioning,
    :copiers,
    :puller_max_pending_kib,
    :hashers,
    :order,
    :ignore_delete,
    :scan_progress_interval_s,
    :puller_pause_s,
    :max_conflicts,
    :disable_sparse_files,
    :disable_temp_indexes,
    :paused,
    :weak_hash_threshold_pct,
    :marker_name,
    :copy_ownership_from_parent,
    :mod_time_window_s,
    :max_concurrent_writes,
    :disable_fsync,
    :block_pull_order,
    :copy_range_method,
    :case_sensitive_fs,
    :follow_junctions,
    :read_only,
    :min_disk_free_pct,
    :pullers
  ]

  def descriptor do
    # credo:disable-for-next-line
    Elixir.Google.Protobuf.DescriptorProto.decode(
      <<10, 19, 70, 111, 108, 100, 101, 114, 67, 111, 110, 102, 105, 103, 117, 114, 97, 116, 105,
        111, 110, 18, 22, 10, 2, 105, 100, 24, 1, 32, 1, 40, 9, 66, 6, 24, 0, 40, 0, 80, 0, 82, 2,
        105, 100, 18, 28, 10, 5, 108, 97, 98, 101, 108, 24, 2, 32, 1, 40, 9, 66, 6, 24, 0, 40, 0,
        80, 0, 82, 5, 108, 97, 98, 101, 108, 18, 59, 10, 15, 102, 105, 108, 101, 115, 121, 115,
        116, 101, 109, 95, 116, 121, 112, 101, 24, 3, 32, 1, 40, 14, 50, 18, 46, 102, 115, 46, 70,
        105, 108, 101, 115, 121, 115, 116, 101, 109, 84, 121, 112, 101, 82, 14, 102, 105, 108,
        101, 115, 121, 115, 116, 101, 109, 84, 121, 112, 101, 18, 26, 10, 4, 112, 97, 116, 104,
        24, 4, 32, 1, 40, 9, 66, 6, 24, 0, 40, 0, 80, 0, 82, 4, 112, 97, 116, 104, 18, 46, 10, 4,
        116, 121, 112, 101, 24, 5, 32, 1, 40, 14, 50, 18, 46, 99, 111, 110, 102, 105, 103, 46, 70,
        111, 108, 100, 101, 114, 84, 121, 112, 101, 66, 6, 24, 0, 40, 0, 80, 0, 82, 4, 116, 121,
        112, 101, 18, 59, 10, 7, 100, 101, 118, 105, 99, 101, 115, 24, 6, 32, 3, 40, 11, 50, 33,
        46, 99, 111, 110, 102, 105, 103, 46, 70, 111, 108, 100, 101, 114, 68, 101, 118, 105, 99,
        101, 67, 111, 110, 102, 105, 103, 117, 114, 97, 116, 105, 111, 110, 82, 7, 100, 101, 118,
        105, 99, 101, 115, 18, 50, 10, 17, 114, 101, 115, 99, 97, 110, 95, 105, 110, 116, 101,
        114, 118, 97, 108, 95, 115, 24, 7, 32, 1, 40, 5, 66, 6, 24, 0, 40, 0, 80, 0, 82, 15, 114,
        101, 115, 99, 97, 110, 73, 110, 116, 101, 114, 118, 97, 108, 83, 18, 52, 10, 18, 102, 115,
        95, 119, 97, 116, 99, 104, 101, 114, 95, 101, 110, 97, 98, 108, 101, 100, 24, 8, 32, 1,
        40, 8, 66, 6, 24, 0, 40, 0, 80, 0, 82, 16, 102, 115, 87, 97, 116, 99, 104, 101, 114, 69,
        110, 97, 98, 108, 101, 100, 18, 51, 10, 18, 102, 115, 95, 119, 97, 116, 99, 104, 101, 114,
        95, 100, 101, 108, 97, 121, 95, 115, 24, 9, 32, 1, 40, 5, 66, 6, 24, 0, 40, 0, 80, 0, 82,
        15, 102, 115, 87, 97, 116, 99, 104, 101, 114, 68, 101, 108, 97, 121, 83, 18, 41, 10, 12,
        105, 103, 110, 111, 114, 101, 95, 112, 101, 114, 109, 115, 24, 10, 32, 1, 40, 8, 66, 6,
        24, 0, 40, 0, 80, 0, 82, 11, 105, 103, 110, 111, 114, 101, 80, 101, 114, 109, 115, 18, 45,
        10, 14, 97, 117, 116, 111, 95, 110, 111, 114, 109, 97, 108, 105, 122, 101, 24, 11, 32, 1,
        40, 8, 66, 6, 24, 0, 40, 0, 80, 0, 82, 13, 97, 117, 116, 111, 78, 111, 114, 109, 97, 108,
        105, 122, 101, 18, 56, 10, 13, 109, 105, 110, 95, 100, 105, 115, 107, 95, 102, 114, 101,
        101, 24, 12, 32, 1, 40, 11, 50, 12, 46, 99, 111, 110, 102, 105, 103, 46, 83, 105, 122,
        101, 66, 6, 24, 0, 40, 0, 80, 0, 82, 11, 109, 105, 110, 68, 105, 115, 107, 70, 114, 101,
        101, 18, 63, 10, 10, 118, 101, 114, 115, 105, 111, 110, 105, 110, 103, 24, 13, 32, 1, 40,
        11, 50, 31, 46, 99, 111, 110, 102, 105, 103, 46, 86, 101, 114, 115, 105, 111, 110, 105,
        110, 103, 67, 111, 110, 102, 105, 103, 117, 114, 97, 116, 105, 111, 110, 82, 10, 118, 101,
        114, 115, 105, 111, 110, 105, 110, 103, 18, 24, 10, 7, 99, 111, 112, 105, 101, 114, 115,
        24, 14, 32, 1, 40, 5, 82, 7, 99, 111, 112, 105, 101, 114, 115, 18, 59, 10, 22, 112, 117,
        108, 108, 101, 114, 95, 109, 97, 120, 95, 112, 101, 110, 100, 105, 110, 103, 95, 107, 105,
        98, 24, 15, 32, 1, 40, 5, 66, 6, 24, 0, 40, 0, 80, 0, 82, 19, 112, 117, 108, 108, 101,
        114, 77, 97, 120, 80, 101, 110, 100, 105, 110, 103, 75, 105, 66, 18, 24, 10, 7, 104, 97,
        115, 104, 101, 114, 115, 24, 16, 32, 1, 40, 5, 82, 7, 104, 97, 115, 104, 101, 114, 115,
        18, 39, 10, 5, 111, 114, 100, 101, 114, 24, 17, 32, 1, 40, 14, 50, 17, 46, 99, 111, 110,
        102, 105, 103, 46, 80, 117, 108, 108, 79, 114, 100, 101, 114, 82, 5, 111, 114, 100, 101,
        114, 18, 35, 10, 13, 105, 103, 110, 111, 114, 101, 95, 100, 101, 108, 101, 116, 101, 24,
        18, 32, 1, 40, 8, 82, 12, 105, 103, 110, 111, 114, 101, 68, 101, 108, 101, 116, 101, 18,
        55, 10, 24, 115, 99, 97, 110, 95, 112, 114, 111, 103, 114, 101, 115, 115, 95, 105, 110,
        116, 101, 114, 118, 97, 108, 95, 115, 24, 19, 32, 1, 40, 5, 82, 21, 115, 99, 97, 110, 80,
        114, 111, 103, 114, 101, 115, 115, 73, 110, 116, 101, 114, 118, 97, 108, 83, 18, 36, 10,
        14, 112, 117, 108, 108, 101, 114, 95, 112, 97, 117, 115, 101, 95, 115, 24, 20, 32, 1, 40,
        5, 82, 12, 112, 117, 108, 108, 101, 114, 80, 97, 117, 115, 101, 83, 18, 43, 10, 13, 109,
        97, 120, 95, 99, 111, 110, 102, 108, 105, 99, 116, 115, 24, 21, 32, 1, 40, 5, 66, 6, 24,
        0, 40, 0, 80, 0, 82, 12, 109, 97, 120, 67, 111, 110, 102, 108, 105, 99, 116, 115, 18, 48,
        10, 20, 100, 105, 115, 97, 98, 108, 101, 95, 115, 112, 97, 114, 115, 101, 95, 102, 105,
        108, 101, 115, 24, 22, 32, 1, 40, 8, 82, 18, 100, 105, 115, 97, 98, 108, 101, 83, 112, 97,
        114, 115, 101, 70, 105, 108, 101, 115, 18, 48, 10, 20, 100, 105, 115, 97, 98, 108, 101,
        95, 116, 101, 109, 112, 95, 105, 110, 100, 101, 120, 101, 115, 24, 23, 32, 1, 40, 8, 82,
        18, 100, 105, 115, 97, 98, 108, 101, 84, 101, 109, 112, 73, 110, 100, 101, 120, 101, 115,
        18, 22, 10, 6, 112, 97, 117, 115, 101, 100, 24, 24, 32, 1, 40, 8, 82, 6, 112, 97, 117,
        115, 101, 100, 18, 53, 10, 23, 119, 101, 97, 107, 95, 104, 97, 115, 104, 95, 116, 104,
        114, 101, 115, 104, 111, 108, 100, 95, 112, 99, 116, 24, 25, 32, 1, 40, 5, 82, 20, 119,
        101, 97, 107, 72, 97, 115, 104, 84, 104, 114, 101, 115, 104, 111, 108, 100, 80, 99, 116,
        18, 31, 10, 11, 109, 97, 114, 107, 101, 114, 95, 110, 97, 109, 101, 24, 26, 32, 1, 40, 9,
        82, 10, 109, 97, 114, 107, 101, 114, 78, 97, 109, 101, 18, 59, 10, 26, 99, 111, 112, 121,
        95, 111, 119, 110, 101, 114, 115, 104, 105, 112, 95, 102, 114, 111, 109, 95, 112, 97, 114,
        101, 110, 116, 24, 27, 32, 1, 40, 8, 82, 23, 99, 111, 112, 121, 79, 119, 110, 101, 114,
        115, 104, 105, 112, 70, 114, 111, 109, 80, 97, 114, 101, 110, 116, 18, 49, 10, 17, 109,
        111, 100, 95, 116, 105, 109, 101, 95, 119, 105, 110, 100, 111, 119, 95, 115, 24, 28, 32,
        1, 40, 5, 66, 6, 24, 0, 40, 0, 80, 0, 82, 14, 109, 111, 100, 84, 105, 109, 101, 87, 105,
        110, 100, 111, 119, 83, 18, 58, 10, 21, 109, 97, 120, 95, 99, 111, 110, 99, 117, 114, 114,
        101, 110, 116, 95, 119, 114, 105, 116, 101, 115, 24, 29, 32, 1, 40, 5, 66, 6, 24, 0, 40,
        0, 80, 0, 82, 19, 109, 97, 120, 67, 111, 110, 99, 117, 114, 114, 101, 110, 116, 87, 114,
        105, 116, 101, 115, 18, 35, 10, 13, 100, 105, 115, 97, 98, 108, 101, 95, 102, 115, 121,
        110, 99, 24, 30, 32, 1, 40, 8, 82, 12, 100, 105, 115, 97, 98, 108, 101, 70, 115, 121, 110,
        99, 18, 64, 10, 16, 98, 108, 111, 99, 107, 95, 112, 117, 108, 108, 95, 111, 114, 100, 101,
        114, 24, 31, 32, 1, 40, 14, 50, 22, 46, 99, 111, 110, 102, 105, 103, 46, 66, 108, 111, 99,
        107, 80, 117, 108, 108, 79, 114, 100, 101, 114, 82, 14, 98, 108, 111, 99, 107, 80, 117,
        108, 108, 79, 114, 100, 101, 114, 18, 71, 10, 17, 99, 111, 112, 121, 95, 114, 97, 110,
        103, 101, 95, 109, 101, 116, 104, 111, 100, 24, 32, 32, 1, 40, 14, 50, 19, 46, 102, 115,
        46, 67, 111, 112, 121, 82, 97, 110, 103, 101, 77, 101, 116, 104, 111, 100, 66, 6, 24, 0,
        40, 0, 80, 0, 82, 15, 99, 111, 112, 121, 82, 97, 110, 103, 101, 77, 101, 116, 104, 111,
        100, 18, 50, 10, 17, 99, 97, 115, 101, 95, 115, 101, 110, 115, 105, 116, 105, 118, 101,
        95, 102, 115, 24, 33, 32, 1, 40, 8, 66, 6, 24, 0, 40, 0, 80, 0, 82, 15, 99, 97, 115, 101,
        83, 101, 110, 115, 105, 116, 105, 118, 101, 70, 83, 18, 49, 10, 16, 102, 111, 108, 108,
        111, 119, 95, 106, 117, 110, 99, 116, 105, 111, 110, 115, 24, 34, 32, 1, 40, 8, 66, 6, 24,
        0, 40, 0, 80, 0, 82, 15, 106, 117, 110, 99, 116, 105, 111, 110, 115, 65, 115, 68, 105,
        114, 115, 18, 36, 10, 9, 114, 101, 97, 100, 95, 111, 110, 108, 121, 24, 168, 70, 32, 1,
        40, 8, 66, 6, 24, 1, 40, 0, 80, 0, 82, 8, 114, 101, 97, 100, 79, 110, 108, 121, 18, 50,
        10, 17, 109, 105, 110, 95, 100, 105, 115, 107, 95, 102, 114, 101, 101, 95, 112, 99, 116,
        24, 169, 70, 32, 1, 40, 1, 66, 6, 24, 1, 40, 0, 80, 0, 82, 14, 109, 105, 110, 68, 105,
        115, 107, 70, 114, 101, 101, 80, 99, 116, 18, 33, 10, 7, 112, 117, 108, 108, 101, 114,
        115, 24, 170, 70, 32, 1, 40, 5, 66, 6, 24, 1, 40, 0, 80, 0, 82, 7, 112, 117, 108, 108,
        101, 114, 115>>
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
          json_name: "id",
          label: :LABEL_OPTIONAL,
          name: "id",
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
          type: :TYPE_STRING,
          type_name: nil
        },
        %Google.Protobuf.FieldDescriptorProto{
          default_value: nil,
          extendee: nil,
          json_name: "label",
          label: :LABEL_OPTIONAL,
          name: "label",
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
          json_name: "filesystemType",
          label: :LABEL_OPTIONAL,
          name: "filesystem_type",
          number: 3,
          oneof_index: nil,
          options: nil,
          proto3_optional: nil,
          type: :TYPE_ENUM,
          type_name: ".fs.FilesystemType"
        },
        %Google.Protobuf.FieldDescriptorProto{
          default_value: nil,
          extendee: nil,
          json_name: "path",
          label: :LABEL_OPTIONAL,
          name: "path",
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
          type: :TYPE_STRING,
          type_name: nil
        },
        %Google.Protobuf.FieldDescriptorProto{
          default_value: nil,
          extendee: nil,
          json_name: "type",
          label: :LABEL_OPTIONAL,
          name: "type",
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
          type: :TYPE_ENUM,
          type_name: ".config.FolderType"
        },
        %Google.Protobuf.FieldDescriptorProto{
          default_value: nil,
          extendee: nil,
          json_name: "devices",
          label: :LABEL_REPEATED,
          name: "devices",
          number: 6,
          oneof_index: nil,
          options: nil,
          proto3_optional: nil,
          type: :TYPE_MESSAGE,
          type_name: ".config.FolderDeviceConfiguration"
        },
        %Google.Protobuf.FieldDescriptorProto{
          default_value: nil,
          extendee: nil,
          json_name: "rescanIntervalS",
          label: :LABEL_OPTIONAL,
          name: "rescan_interval_s",
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
          type: :TYPE_INT32,
          type_name: nil
        },
        %Google.Protobuf.FieldDescriptorProto{
          default_value: nil,
          extendee: nil,
          json_name: "fsWatcherEnabled",
          label: :LABEL_OPTIONAL,
          name: "fs_watcher_enabled",
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
          type: :TYPE_BOOL,
          type_name: nil
        },
        %Google.Protobuf.FieldDescriptorProto{
          default_value: nil,
          extendee: nil,
          json_name: "fsWatcherDelayS",
          label: :LABEL_OPTIONAL,
          name: "fs_watcher_delay_s",
          number: 9,
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
          json_name: "ignorePerms",
          label: :LABEL_OPTIONAL,
          name: "ignore_perms",
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
          type: :TYPE_BOOL,
          type_name: nil
        },
        %Google.Protobuf.FieldDescriptorProto{
          default_value: nil,
          extendee: nil,
          json_name: "autoNormalize",
          label: :LABEL_OPTIONAL,
          name: "auto_normalize",
          number: 11,
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
          json_name: "minDiskFree",
          label: :LABEL_OPTIONAL,
          name: "min_disk_free",
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
          type: :TYPE_MESSAGE,
          type_name: ".config.Size"
        },
        %Google.Protobuf.FieldDescriptorProto{
          default_value: nil,
          extendee: nil,
          json_name: "versioning",
          label: :LABEL_OPTIONAL,
          name: "versioning",
          number: 13,
          oneof_index: nil,
          options: nil,
          proto3_optional: nil,
          type: :TYPE_MESSAGE,
          type_name: ".config.VersioningConfiguration"
        },
        %Google.Protobuf.FieldDescriptorProto{
          default_value: nil,
          extendee: nil,
          json_name: "copiers",
          label: :LABEL_OPTIONAL,
          name: "copiers",
          number: 14,
          oneof_index: nil,
          options: nil,
          proto3_optional: nil,
          type: :TYPE_INT32,
          type_name: nil
        },
        %Google.Protobuf.FieldDescriptorProto{
          default_value: nil,
          extendee: nil,
          json_name: "pullerMaxPendingKiB",
          label: :LABEL_OPTIONAL,
          name: "puller_max_pending_kib",
          number: 15,
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
          json_name: "hashers",
          label: :LABEL_OPTIONAL,
          name: "hashers",
          number: 16,
          oneof_index: nil,
          options: nil,
          proto3_optional: nil,
          type: :TYPE_INT32,
          type_name: nil
        },
        %Google.Protobuf.FieldDescriptorProto{
          default_value: nil,
          extendee: nil,
          json_name: "order",
          label: :LABEL_OPTIONAL,
          name: "order",
          number: 17,
          oneof_index: nil,
          options: nil,
          proto3_optional: nil,
          type: :TYPE_ENUM,
          type_name: ".config.PullOrder"
        },
        %Google.Protobuf.FieldDescriptorProto{
          default_value: nil,
          extendee: nil,
          json_name: "ignoreDelete",
          label: :LABEL_OPTIONAL,
          name: "ignore_delete",
          number: 18,
          oneof_index: nil,
          options: nil,
          proto3_optional: nil,
          type: :TYPE_BOOL,
          type_name: nil
        },
        %Google.Protobuf.FieldDescriptorProto{
          default_value: nil,
          extendee: nil,
          json_name: "scanProgressIntervalS",
          label: :LABEL_OPTIONAL,
          name: "scan_progress_interval_s",
          number: 19,
          oneof_index: nil,
          options: nil,
          proto3_optional: nil,
          type: :TYPE_INT32,
          type_name: nil
        },
        %Google.Protobuf.FieldDescriptorProto{
          default_value: nil,
          extendee: nil,
          json_name: "pullerPauseS",
          label: :LABEL_OPTIONAL,
          name: "puller_pause_s",
          number: 20,
          oneof_index: nil,
          options: nil,
          proto3_optional: nil,
          type: :TYPE_INT32,
          type_name: nil
        },
        %Google.Protobuf.FieldDescriptorProto{
          default_value: nil,
          extendee: nil,
          json_name: "maxConflicts",
          label: :LABEL_OPTIONAL,
          name: "max_conflicts",
          number: 21,
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
          json_name: "disableSparseFiles",
          label: :LABEL_OPTIONAL,
          name: "disable_sparse_files",
          number: 22,
          oneof_index: nil,
          options: nil,
          proto3_optional: nil,
          type: :TYPE_BOOL,
          type_name: nil
        },
        %Google.Protobuf.FieldDescriptorProto{
          default_value: nil,
          extendee: nil,
          json_name: "disableTempIndexes",
          label: :LABEL_OPTIONAL,
          name: "disable_temp_indexes",
          number: 23,
          oneof_index: nil,
          options: nil,
          proto3_optional: nil,
          type: :TYPE_BOOL,
          type_name: nil
        },
        %Google.Protobuf.FieldDescriptorProto{
          default_value: nil,
          extendee: nil,
          json_name: "paused",
          label: :LABEL_OPTIONAL,
          name: "paused",
          number: 24,
          oneof_index: nil,
          options: nil,
          proto3_optional: nil,
          type: :TYPE_BOOL,
          type_name: nil
        },
        %Google.Protobuf.FieldDescriptorProto{
          default_value: nil,
          extendee: nil,
          json_name: "weakHashThresholdPct",
          label: :LABEL_OPTIONAL,
          name: "weak_hash_threshold_pct",
          number: 25,
          oneof_index: nil,
          options: nil,
          proto3_optional: nil,
          type: :TYPE_INT32,
          type_name: nil
        },
        %Google.Protobuf.FieldDescriptorProto{
          default_value: nil,
          extendee: nil,
          json_name: "markerName",
          label: :LABEL_OPTIONAL,
          name: "marker_name",
          number: 26,
          oneof_index: nil,
          options: nil,
          proto3_optional: nil,
          type: :TYPE_STRING,
          type_name: nil
        },
        %Google.Protobuf.FieldDescriptorProto{
          default_value: nil,
          extendee: nil,
          json_name: "copyOwnershipFromParent",
          label: :LABEL_OPTIONAL,
          name: "copy_ownership_from_parent",
          number: 27,
          oneof_index: nil,
          options: nil,
          proto3_optional: nil,
          type: :TYPE_BOOL,
          type_name: nil
        },
        %Google.Protobuf.FieldDescriptorProto{
          default_value: nil,
          extendee: nil,
          json_name: "modTimeWindowS",
          label: :LABEL_OPTIONAL,
          name: "mod_time_window_s",
          number: 28,
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
          json_name: "maxConcurrentWrites",
          label: :LABEL_OPTIONAL,
          name: "max_concurrent_writes",
          number: 29,
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
          json_name: "disableFsync",
          label: :LABEL_OPTIONAL,
          name: "disable_fsync",
          number: 30,
          oneof_index: nil,
          options: nil,
          proto3_optional: nil,
          type: :TYPE_BOOL,
          type_name: nil
        },
        %Google.Protobuf.FieldDescriptorProto{
          default_value: nil,
          extendee: nil,
          json_name: "blockPullOrder",
          label: :LABEL_OPTIONAL,
          name: "block_pull_order",
          number: 31,
          oneof_index: nil,
          options: nil,
          proto3_optional: nil,
          type: :TYPE_ENUM,
          type_name: ".config.BlockPullOrder"
        },
        %Google.Protobuf.FieldDescriptorProto{
          default_value: nil,
          extendee: nil,
          json_name: "copyRangeMethod",
          label: :LABEL_OPTIONAL,
          name: "copy_range_method",
          number: 32,
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
          type_name: ".fs.CopyRangeMethod"
        },
        %Google.Protobuf.FieldDescriptorProto{
          default_value: nil,
          extendee: nil,
          json_name: "caseSensitiveFS",
          label: :LABEL_OPTIONAL,
          name: "case_sensitive_fs",
          number: 33,
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
          json_name: "junctionsAsDirs",
          label: :LABEL_OPTIONAL,
          name: "follow_junctions",
          number: 34,
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
          json_name: "readOnly",
          label: :LABEL_OPTIONAL,
          name: "read_only",
          number: 9000,
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
          type: :TYPE_BOOL,
          type_name: nil
        },
        %Google.Protobuf.FieldDescriptorProto{
          default_value: nil,
          extendee: nil,
          json_name: "minDiskFreePct",
          label: :LABEL_OPTIONAL,
          name: "min_disk_free_pct",
          number: 9001,
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
          type: :TYPE_DOUBLE,
          type_name: nil
        },
        %Google.Protobuf.FieldDescriptorProto{
          default_value: nil,
          extendee: nil,
          json_name: "pullers",
          label: :LABEL_OPTIONAL,
          name: "pullers",
          number: 9002,
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
          type: :TYPE_INT32,
          type_name: nil
        }
      ],
      name: "FolderConfiguration",
      nested_type: [],
      oneof_decl: [],
      options: nil,
      reserved_name: [],
      reserved_range: []
    }
  end

  field :id, 1, type: :string
  field :label, 2, type: :string

  field :filesystem_type, 3,
    type: Syncthex.Proto.Fs.FilesystemType,
    enum: true,
    json_name: "filesystemType"

  field :path, 4, type: :string
  field :type, 5, type: Syncthex.Proto.Config.FolderType, enum: true
  field :devices, 6, repeated: true, type: Syncthex.Proto.Config.FolderDeviceConfiguration
  field :rescan_interval_s, 7, type: :int32, json_name: "rescanIntervalS"
  field :fs_watcher_enabled, 8, type: :bool, json_name: "fsWatcherEnabled"
  field :fs_watcher_delay_s, 9, type: :int32, json_name: "fsWatcherDelayS"
  field :ignore_perms, 10, type: :bool, json_name: "ignorePerms"
  field :auto_normalize, 11, type: :bool, json_name: "autoNormalize"
  field :min_disk_free, 12, type: Syncthex.Proto.Config.Size, json_name: "minDiskFree"
  field :versioning, 13, type: Syncthex.Proto.Config.VersioningConfiguration
  field :copiers, 14, type: :int32
  field :puller_max_pending_kib, 15, type: :int32, json_name: "pullerMaxPendingKiB"
  field :hashers, 16, type: :int32
  field :order, 17, type: Syncthex.Proto.Config.PullOrder, enum: true
  field :ignore_delete, 18, type: :bool, json_name: "ignoreDelete"
  field :scan_progress_interval_s, 19, type: :int32, json_name: "scanProgressIntervalS"
  field :puller_pause_s, 20, type: :int32, json_name: "pullerPauseS"
  field :max_conflicts, 21, type: :int32, json_name: "maxConflicts"
  field :disable_sparse_files, 22, type: :bool, json_name: "disableSparseFiles"
  field :disable_temp_indexes, 23, type: :bool, json_name: "disableTempIndexes"
  field :paused, 24, type: :bool
  field :weak_hash_threshold_pct, 25, type: :int32, json_name: "weakHashThresholdPct"
  field :marker_name, 26, type: :string, json_name: "markerName"
  field :copy_ownership_from_parent, 27, type: :bool, json_name: "copyOwnershipFromParent"
  field :mod_time_window_s, 28, type: :int32, json_name: "modTimeWindowS"
  field :max_concurrent_writes, 29, type: :int32, json_name: "maxConcurrentWrites"
  field :disable_fsync, 30, type: :bool, json_name: "disableFsync"

  field :block_pull_order, 31,
    type: Syncthex.Proto.Config.BlockPullOrder,
    enum: true,
    json_name: "blockPullOrder"

  field :copy_range_method, 32,
    type: Syncthex.Proto.Fs.CopyRangeMethod,
    enum: true,
    json_name: "copyRangeMethod"

  field :case_sensitive_fs, 33, type: :bool, json_name: "caseSensitiveFS"
  field :follow_junctions, 34, type: :bool, json_name: "junctionsAsDirs"
  field :read_only, 9000, type: :bool, deprecated: true, json_name: "readOnly"
  field :min_disk_free_pct, 9001, type: :double, deprecated: true, json_name: "minDiskFreePct"
  field :pullers, 9002, type: :int32, deprecated: true
end
