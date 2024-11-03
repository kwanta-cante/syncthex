defmodule Syncthex.Proto.Config.FolderConfiguration do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "FolderConfiguration",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "id",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
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
            __unknown_fields__: [{75010, 2, "ID"}, {75005, 2, "id,attr"}, {75012, 0, 1}]
          },
          oneof_index: nil,
          json_name: "id",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "label",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
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
            __unknown_fields__: [{75005, 2, "label,attr"}, {75008, 0, 0}]
          },
          oneof_index: nil,
          json_name: "label",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "filesystem_type",
          extendee: nil,
          number: 3,
          label: :LABEL_OPTIONAL,
          type: :TYPE_ENUM,
          type_name: ".fs.FilesystemType",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "filesystemType",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "path",
          extendee: nil,
          number: 4,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
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
            __unknown_fields__: [{75005, 2, "path,attr"}, {75007, 2, "~"}]
          },
          oneof_index: nil,
          json_name: "path",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "type",
          extendee: nil,
          number: 5,
          label: :LABEL_OPTIONAL,
          type: :TYPE_ENUM,
          type_name: ".config.FolderType",
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
            __unknown_fields__: [{75005, 2, "type,attr"}]
          },
          oneof_index: nil,
          json_name: "type",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "devices",
          extendee: nil,
          number: 6,
          label: :LABEL_REPEATED,
          type: :TYPE_MESSAGE,
          type_name: ".config.FolderDeviceConfiguration",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "devices",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "rescan_interval_s",
          extendee: nil,
          number: 7,
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
            __unknown_fields__: [{75005, 2, "rescanIntervalS,attr"}, {75007, 2, "3600"}]
          },
          oneof_index: nil,
          json_name: "rescanIntervalS",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "fs_watcher_enabled",
          extendee: nil,
          number: 8,
          label: :LABEL_OPTIONAL,
          type: :TYPE_BOOL,
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
              {75010, 2, "FSWatcherEnabled"},
              {75005, 2, "fsWatcherEnabled,attr"},
              {75007, 2, "true"}
            ]
          },
          oneof_index: nil,
          json_name: "fsWatcherEnabled",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "fs_watcher_delay_s",
          extendee: nil,
          number: 9,
          label: :LABEL_OPTIONAL,
          type: :TYPE_DOUBLE,
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
              {75010, 2, "FSWatcherDelayS"},
              {75005, 2, "fsWatcherDelayS,attr"},
              {75007, 2, "10"}
            ]
          },
          oneof_index: nil,
          json_name: "fsWatcherDelayS",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "fs_watcher_timeout_s",
          extendee: nil,
          number: 40,
          label: :LABEL_OPTIONAL,
          type: :TYPE_DOUBLE,
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
              {75010, 2, "FSWatcherTimeoutS"},
              {75005, 2, "fsWatcherTimeoutS,attr"}
            ]
          },
          oneof_index: nil,
          json_name: "fsWatcherTimeoutS",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "ignore_perms",
          extendee: nil,
          number: 10,
          label: :LABEL_OPTIONAL,
          type: :TYPE_BOOL,
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
            __unknown_fields__: [{75005, 2, "ignorePerms,attr"}]
          },
          oneof_index: nil,
          json_name: "ignorePerms",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "auto_normalize",
          extendee: nil,
          number: 11,
          label: :LABEL_OPTIONAL,
          type: :TYPE_BOOL,
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
            __unknown_fields__: [{75005, 2, "autoNormalize,attr"}, {75007, 2, "true"}]
          },
          oneof_index: nil,
          json_name: "autoNormalize",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "min_disk_free",
          extendee: nil,
          number: 12,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".config.Size",
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
            __unknown_fields__: [{75007, 2, "1 %"}]
          },
          oneof_index: nil,
          json_name: "minDiskFree",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "versioning",
          extendee: nil,
          number: 13,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".config.VersioningConfiguration",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "versioning",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "copiers",
          extendee: nil,
          number: 14,
          label: :LABEL_OPTIONAL,
          type: :TYPE_INT32,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "copiers",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "puller_max_pending_kib",
          extendee: nil,
          number: 15,
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
            __unknown_fields__: [
              {75010, 2, "PullerMaxPendingKiB"},
              {75005, 2, "pullerMaxPendingKiB"},
              {75006, 2, "pullerMaxPendingKiB"}
            ]
          },
          oneof_index: nil,
          json_name: "pullerMaxPendingKib",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "hashers",
          extendee: nil,
          number: 16,
          label: :LABEL_OPTIONAL,
          type: :TYPE_INT32,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "hashers",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "order",
          extendee: nil,
          number: 17,
          label: :LABEL_OPTIONAL,
          type: :TYPE_ENUM,
          type_name: ".config.PullOrder",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "order",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "ignore_delete",
          extendee: nil,
          number: 18,
          label: :LABEL_OPTIONAL,
          type: :TYPE_BOOL,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "ignoreDelete",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "scan_progress_interval_s",
          extendee: nil,
          number: 19,
          label: :LABEL_OPTIONAL,
          type: :TYPE_INT32,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "scanProgressIntervalS",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "puller_pause_s",
          extendee: nil,
          number: 20,
          label: :LABEL_OPTIONAL,
          type: :TYPE_INT32,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "pullerPauseS",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "max_conflicts",
          extendee: nil,
          number: 21,
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
            __unknown_fields__: [{75007, 2, "10"}]
          },
          oneof_index: nil,
          json_name: "maxConflicts",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "disable_sparse_files",
          extendee: nil,
          number: 22,
          label: :LABEL_OPTIONAL,
          type: :TYPE_BOOL,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "disableSparseFiles",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "disable_temp_indexes",
          extendee: nil,
          number: 23,
          label: :LABEL_OPTIONAL,
          type: :TYPE_BOOL,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "disableTempIndexes",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "paused",
          extendee: nil,
          number: 24,
          label: :LABEL_OPTIONAL,
          type: :TYPE_BOOL,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "paused",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "weak_hash_threshold_pct",
          extendee: nil,
          number: 25,
          label: :LABEL_OPTIONAL,
          type: :TYPE_INT32,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "weakHashThresholdPct",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "marker_name",
          extendee: nil,
          number: 26,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "markerName",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "copy_ownership_from_parent",
          extendee: nil,
          number: 27,
          label: :LABEL_OPTIONAL,
          type: :TYPE_BOOL,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "copyOwnershipFromParent",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "mod_time_window_s",
          extendee: nil,
          number: 28,
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
            __unknown_fields__: [{75010, 2, "RawModTimeWindowS"}]
          },
          oneof_index: nil,
          json_name: "modTimeWindowS",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "max_concurrent_writes",
          extendee: nil,
          number: 29,
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
            __unknown_fields__: [{75007, 2, "2"}]
          },
          oneof_index: nil,
          json_name: "maxConcurrentWrites",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "disable_fsync",
          extendee: nil,
          number: 30,
          label: :LABEL_OPTIONAL,
          type: :TYPE_BOOL,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "disableFsync",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "block_pull_order",
          extendee: nil,
          number: 31,
          label: :LABEL_OPTIONAL,
          type: :TYPE_ENUM,
          type_name: ".config.BlockPullOrder",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "blockPullOrder",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "copy_range_method",
          extendee: nil,
          number: 32,
          label: :LABEL_OPTIONAL,
          type: :TYPE_ENUM,
          type_name: ".fs.CopyRangeMethod",
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
            __unknown_fields__: [{75007, 2, "standard"}]
          },
          oneof_index: nil,
          json_name: "copyRangeMethod",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "case_sensitive_fs",
          extendee: nil,
          number: 33,
          label: :LABEL_OPTIONAL,
          type: :TYPE_BOOL,
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
              {75010, 2, "CaseSensitiveFS"},
              {75005, 2, "caseSensitiveFS"},
              {75006, 2, "caseSensitiveFS"}
            ]
          },
          oneof_index: nil,
          json_name: "caseSensitiveFs",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "follow_junctions",
          extendee: nil,
          number: 34,
          label: :LABEL_OPTIONAL,
          type: :TYPE_BOOL,
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
              {75010, 2, "JunctionsAsDirs"},
              {75005, 2, "junctionsAsDirs"},
              {75006, 2, "junctionsAsDirs"}
            ]
          },
          oneof_index: nil,
          json_name: "followJunctions",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "sync_ownership",
          extendee: nil,
          number: 35,
          label: :LABEL_OPTIONAL,
          type: :TYPE_BOOL,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "syncOwnership",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "send_ownership",
          extendee: nil,
          number: 36,
          label: :LABEL_OPTIONAL,
          type: :TYPE_BOOL,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "sendOwnership",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "sync_xattrs",
          extendee: nil,
          number: 37,
          label: :LABEL_OPTIONAL,
          type: :TYPE_BOOL,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "syncXattrs",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "send_xattrs",
          extendee: nil,
          number: 38,
          label: :LABEL_OPTIONAL,
          type: :TYPE_BOOL,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "sendXattrs",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "xattr_filter",
          extendee: nil,
          number: 39,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".config.XattrFilter",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "xattrFilter",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "read_only",
          extendee: nil,
          number: 9000,
          label: :LABEL_OPTIONAL,
          type: :TYPE_BOOL,
          type_name: nil,
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
            __unknown_fields__: [{75005, 2, "ro,attr,omitempty"}]
          },
          oneof_index: nil,
          json_name: "readOnly",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "min_disk_free_pct",
          extendee: nil,
          number: 9001,
          label: :LABEL_OPTIONAL,
          type: :TYPE_DOUBLE,
          type_name: nil,
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
          json_name: "minDiskFreePct",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "pullers",
          extendee: nil,
          number: 9002,
          label: :LABEL_OPTIONAL,
          type: :TYPE_INT32,
          type_name: nil,
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
          json_name: "pullers",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "scan_ownership",
          extendee: nil,
          number: 9003,
          label: :LABEL_OPTIONAL,
          type: :TYPE_BOOL,
          type_name: nil,
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
          json_name: "scanOwnership",
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

  field :id, 1, type: :string, deprecated: false
  field :label, 2, type: :string, deprecated: false

  field :filesystem_type, 3,
    type: Syncthex.Proto.Fs.FilesystemType,
    json_name: "filesystemType",
    enum: true

  field :path, 4, type: :string, deprecated: false
  field :type, 5, type: Syncthex.Proto.Config.FolderType, enum: true, deprecated: false
  field :devices, 6, repeated: true, type: Syncthex.Proto.Config.FolderDeviceConfiguration
  field :rescan_interval_s, 7, type: :int32, json_name: "rescanIntervalS", deprecated: false
  field :fs_watcher_enabled, 8, type: :bool, json_name: "fsWatcherEnabled", deprecated: false
  field :fs_watcher_delay_s, 9, type: :double, json_name: "fsWatcherDelayS", deprecated: false

  field :fs_watcher_timeout_s, 40,
    type: :double,
    json_name: "fsWatcherTimeoutS",
    deprecated: false

  field :ignore_perms, 10, type: :bool, json_name: "ignorePerms", deprecated: false
  field :auto_normalize, 11, type: :bool, json_name: "autoNormalize", deprecated: false

  field :min_disk_free, 12,
    type: Syncthex.Proto.Config.Size,
    json_name: "minDiskFree",
    deprecated: false

  field :versioning, 13, type: Syncthex.Proto.Config.VersioningConfiguration
  field :copiers, 14, type: :int32

  field :puller_max_pending_kib, 15,
    type: :int32,
    json_name: "pullerMaxPendingKib",
    deprecated: false

  field :hashers, 16, type: :int32
  field :order, 17, type: Syncthex.Proto.Config.PullOrder, enum: true
  field :ignore_delete, 18, type: :bool, json_name: "ignoreDelete"
  field :scan_progress_interval_s, 19, type: :int32, json_name: "scanProgressIntervalS"
  field :puller_pause_s, 20, type: :int32, json_name: "pullerPauseS"
  field :max_conflicts, 21, type: :int32, json_name: "maxConflicts", deprecated: false
  field :disable_sparse_files, 22, type: :bool, json_name: "disableSparseFiles"
  field :disable_temp_indexes, 23, type: :bool, json_name: "disableTempIndexes"
  field :paused, 24, type: :bool
  field :weak_hash_threshold_pct, 25, type: :int32, json_name: "weakHashThresholdPct"
  field :marker_name, 26, type: :string, json_name: "markerName"
  field :copy_ownership_from_parent, 27, type: :bool, json_name: "copyOwnershipFromParent"
  field :mod_time_window_s, 28, type: :int32, json_name: "modTimeWindowS", deprecated: false

  field :max_concurrent_writes, 29,
    type: :int32,
    json_name: "maxConcurrentWrites",
    deprecated: false

  field :disable_fsync, 30, type: :bool, json_name: "disableFsync"

  field :block_pull_order, 31,
    type: Syncthex.Proto.Config.BlockPullOrder,
    json_name: "blockPullOrder",
    enum: true

  field :copy_range_method, 32,
    type: Syncthex.Proto.Fs.CopyRangeMethod,
    json_name: "copyRangeMethod",
    enum: true,
    deprecated: false

  field :case_sensitive_fs, 33, type: :bool, json_name: "caseSensitiveFs", deprecated: false
  field :follow_junctions, 34, type: :bool, json_name: "followJunctions", deprecated: false
  field :sync_ownership, 35, type: :bool, json_name: "syncOwnership"
  field :send_ownership, 36, type: :bool, json_name: "sendOwnership"
  field :sync_xattrs, 37, type: :bool, json_name: "syncXattrs"
  field :send_xattrs, 38, type: :bool, json_name: "sendXattrs"
  field :xattr_filter, 39, type: Syncthex.Proto.Config.XattrFilter, json_name: "xattrFilter"
  field :read_only, 9000, type: :bool, json_name: "readOnly", deprecated: true
  field :min_disk_free_pct, 9001, type: :double, json_name: "minDiskFreePct", deprecated: true
  field :pullers, 9002, type: :int32, deprecated: true
  field :scan_ownership, 9003, type: :bool, json_name: "scanOwnership", deprecated: true
end