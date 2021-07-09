defmodule Syncthex.Proto.FileVersion do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          version: Syncthex.Proto.Vector.t() | nil,
          deleted: boolean,
          devices: binary,
          invalid_devices: binary
        }

  defstruct [:version, :deleted, :devices, :invalid_devices]

  field :version, 1, type: Syncthex.Proto.Vector
  field :deleted, 2, type: :bool
  field :devices, 3, repeated: true, type: :bytes
  field :invalid_devices, 4, repeated: true, type: :bytes, json_name: "invalidDevices"
end

defmodule Syncthex.Proto.VersionList do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          versions: [Syncthex.Proto.FileVersion.t()]
        }

  defstruct [:versions]

  field :versions, 1, repeated: true, type: Syncthex.Proto.FileVersion
end

defmodule Syncthex.Proto.FileInfoTruncated do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          size: integer,
          modified_s: integer,
          modified_by: non_neg_integer,
          version: Syncthex.Proto.Vector.t() | nil,
          sequence: integer,
          symlink_target: String.t(),
          blocks_hash: binary,
          encrypted: binary,
          type: Syncthex.Proto.FileInfoType.t(),
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

  field :name, 1, type: :string
  field :size, 3, type: :int64
  field :modified_s, 5, type: :int64, json_name: "modifiedS"
  field :modified_by, 12, type: :uint64, json_name: "modifiedBy"
  field :version, 9, type: Syncthex.Proto.Vector
  field :sequence, 10, type: :int64
  field :symlink_target, 17, type: :string, json_name: "symlinkTarget"
  field :blocks_hash, 18, type: :bytes, json_name: "blocksHash"
  field :encrypted, 19, type: :bytes
  field :type, 2, type: Syncthex.Proto.FileInfoType, enum: true
  field :permissions, 4, type: :uint32
  field :modified_ns, 11, type: :int32, json_name: "modifiedNs"
  field :block_size, 13, type: :int32, json_name: "blockSize"
  field :local_flags, 1000, type: :uint32, json_name: "localFlags"
  field :version_hash, 1001, type: :bytes, json_name: "versionHash"
  field :deleted, 6, type: :bool
  field :invalid, 7, type: :bool
  field :no_permissions, 8, type: :bool, json_name: "noPermissions"
end

defmodule Syncthex.Proto.BlockList do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          blocks: [Syncthex.Proto.BlockInfo.t()]
        }

  defstruct [:blocks]

  field :blocks, 1, repeated: true, type: Syncthex.Proto.BlockInfo
end

defmodule Syncthex.Proto.IndirectionHashesOnly do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          blocks_hash: binary,
          version_hash: binary
        }

  defstruct [:blocks_hash, :version_hash]

  field :blocks_hash, 18, type: :bytes, json_name: "blocksHash"
  field :version_hash, 1001, type: :bytes, json_name: "versionHash"
end

defmodule Syncthex.Proto.Counts do
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

  field :files, 1, type: :int32
  field :directories, 2, type: :int32
  field :symlinks, 3, type: :int32
  field :deleted, 4, type: :int32
  field :bytes, 5, type: :int64
  field :sequence, 6, type: :int64
  field :device_id, 17, type: :bytes, json_name: "deviceId"
  field :local_flags, 18, type: :uint32, json_name: "localFlags"
end

defmodule Syncthex.Proto.CountsSet do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          counts: [Syncthex.Proto.Counts.t()],
          created: integer
        }

  defstruct [:counts, :created]

  field :counts, 1, repeated: true, type: Syncthex.Proto.Counts
  field :created, 2, type: :int64
end

defmodule Syncthex.Proto.FileVersionDeprecated do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          version: Syncthex.Proto.Vector.t() | nil,
          device: binary,
          invalid: boolean,
          deleted: boolean
        }

  defstruct [:version, :device, :invalid, :deleted]

  field :version, 1, type: Syncthex.Proto.Vector
  field :device, 2, type: :bytes
  field :invalid, 3, type: :bool
  field :deleted, 4, type: :bool
end

defmodule Syncthex.Proto.VersionListDeprecated do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          versions: [Syncthex.Proto.FileVersionDeprecated.t()]
        }

  defstruct [:versions]

  field :versions, 1, repeated: true, type: Syncthex.Proto.FileVersionDeprecated
end

defmodule Syncthex.Proto.ObservedFolder do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          time: Google.Protobuf.Timestamp.t() | nil,
          label: String.t(),
          receive_encrypted: boolean,
          remote_encrypted: boolean
        }

  defstruct [:time, :label, :receive_encrypted, :remote_encrypted]

  field :time, 1, type: Google.Protobuf.Timestamp
  field :label, 2, type: :string
  field :receive_encrypted, 3, type: :bool, json_name: "receiveEncrypted"
  field :remote_encrypted, 4, type: :bool, json_name: "remoteEncrypted"
end

defmodule Syncthex.Proto.ObservedDevice do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          time: Google.Protobuf.Timestamp.t() | nil,
          name: String.t(),
          address: String.t()
        }

  defstruct [:time, :name, :address]

  field :time, 1, type: Google.Protobuf.Timestamp
  field :name, 2, type: :string
  field :address, 3, type: :string
end
