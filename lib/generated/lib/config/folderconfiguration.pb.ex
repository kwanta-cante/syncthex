defmodule Syncthex.Proto.FolderDeviceConfiguration do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          device_id: binary,
          introduced_by: binary,
          encryption_password: String.t()
        }

  defstruct [:device_id, :introduced_by, :encryption_password]

  field :device_id, 1, type: :bytes, json_name: "deviceId"
  field :introduced_by, 2, type: :bytes, json_name: "introducedBy"
  field :encryption_password, 3, type: :string, json_name: "encryptionPassword"
end

defmodule Syncthex.Proto.FolderConfiguration do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          id: String.t(),
          label: String.t(),
          filesystem_type: Syncthex.Proto.FilesystemType.t(),
          path: String.t(),
          type: Syncthex.Proto.FolderType.t(),
          devices: [Syncthex.Proto.FolderDeviceConfiguration.t()],
          rescan_interval_s: integer,
          fs_watcher_enabled: boolean,
          fs_watcher_delay_s: integer,
          ignore_perms: boolean,
          auto_normalize: boolean,
          min_disk_free: Syncthex.Proto.Size.t() | nil,
          versioning: Syncthex.Proto.VersioningConfiguration.t() | nil,
          copiers: integer,
          puller_max_pending_kib: integer,
          hashers: integer,
          order: Syncthex.Proto.PullOrder.t(),
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
          block_pull_order: Syncthex.Proto.BlockPullOrder.t(),
          copy_range_method: Syncthex.Proto.CopyRangeMethod.t(),
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

  field :id, 1, type: :string
  field :label, 2, type: :string

  field :filesystem_type, 3,
    type: Syncthex.Proto.FilesystemType,
    enum: true,
    json_name: "filesystemType"

  field :path, 4, type: :string
  field :type, 5, type: Syncthex.Proto.FolderType, enum: true
  field :devices, 6, repeated: true, type: Syncthex.Proto.FolderDeviceConfiguration
  field :rescan_interval_s, 7, type: :int32, json_name: "rescanIntervalS"
  field :fs_watcher_enabled, 8, type: :bool, json_name: "fsWatcherEnabled"
  field :fs_watcher_delay_s, 9, type: :int32, json_name: "fsWatcherDelayS"
  field :ignore_perms, 10, type: :bool, json_name: "ignorePerms"
  field :auto_normalize, 11, type: :bool, json_name: "autoNormalize"
  field :min_disk_free, 12, type: Syncthex.Proto.Size, json_name: "minDiskFree"
  field :versioning, 13, type: Syncthex.Proto.VersioningConfiguration
  field :copiers, 14, type: :int32
  field :puller_max_pending_kib, 15, type: :int32, json_name: "pullerMaxPendingKib"
  field :hashers, 16, type: :int32
  field :order, 17, type: Syncthex.Proto.PullOrder, enum: true
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
    type: Syncthex.Proto.BlockPullOrder,
    enum: true,
    json_name: "blockPullOrder"

  field :copy_range_method, 32,
    type: Syncthex.Proto.CopyRangeMethod,
    enum: true,
    json_name: "copyRangeMethod"

  field :case_sensitive_fs, 33, type: :bool, json_name: "caseSensitiveFs"
  field :follow_junctions, 34, type: :bool, json_name: "followJunctions"
  field :read_only, 9000, type: :bool, deprecated: true, json_name: "readOnly"
  field :min_disk_free_pct, 9001, type: :double, deprecated: true, json_name: "minDiskFreePct"
  field :pullers, 9002, type: :int32, deprecated: true
end
