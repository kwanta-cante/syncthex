defmodule Protocol.MessageType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :MESSAGE_TYPE_CLUSTER_CONFIG
          | :MESSAGE_TYPE_INDEX
          | :MESSAGE_TYPE_INDEX_UPDATE
          | :MESSAGE_TYPE_REQUEST
          | :MESSAGE_TYPE_RESPONSE
          | :MESSAGE_TYPE_DOWNLOAD_PROGRESS
          | :MESSAGE_TYPE_PING
          | :MESSAGE_TYPE_CLOSE

  field :MESSAGE_TYPE_CLUSTER_CONFIG, 0

  field :MESSAGE_TYPE_INDEX, 1

  field :MESSAGE_TYPE_INDEX_UPDATE, 2

  field :MESSAGE_TYPE_REQUEST, 3

  field :MESSAGE_TYPE_RESPONSE, 4

  field :MESSAGE_TYPE_DOWNLOAD_PROGRESS, 5

  field :MESSAGE_TYPE_PING, 6

  field :MESSAGE_TYPE_CLOSE, 7
end

defmodule Protocol.MessageCompression do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :MESSAGE_COMPRESSION_NONE | :MESSAGE_COMPRESSION_LZ4

  field :MESSAGE_COMPRESSION_NONE, 0

  field :MESSAGE_COMPRESSION_LZ4, 1
end

defmodule Protocol.Compression do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :COMPRESSION_METADATA | :COMPRESSION_NEVER | :COMPRESSION_ALWAYS

  field :COMPRESSION_METADATA, 0

  field :COMPRESSION_NEVER, 1

  field :COMPRESSION_ALWAYS, 2
end

defmodule Protocol.FileInfoType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :FILE_INFO_TYPE_FILE
          | :FILE_INFO_TYPE_DIRECTORY
          | :FILE_INFO_TYPE_SYMLINK_FILE
          | :FILE_INFO_TYPE_SYMLINK_DIRECTORY
          | :FILE_INFO_TYPE_SYMLINK

  field :FILE_INFO_TYPE_FILE, 0

  field :FILE_INFO_TYPE_DIRECTORY, 1

  field :FILE_INFO_TYPE_SYMLINK_FILE, 2

  field :FILE_INFO_TYPE_SYMLINK_DIRECTORY, 3

  field :FILE_INFO_TYPE_SYMLINK, 4
end

defmodule Protocol.ErrorCode do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :ERROR_CODE_NO_ERROR
          | :ERROR_CODE_GENERIC
          | :ERROR_CODE_NO_SUCH_FILE
          | :ERROR_CODE_INVALID_FILE

  field :ERROR_CODE_NO_ERROR, 0

  field :ERROR_CODE_GENERIC, 1

  field :ERROR_CODE_NO_SUCH_FILE, 2

  field :ERROR_CODE_INVALID_FILE, 3
end

defmodule Protocol.FileDownloadProgressUpdateType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :FILE_DOWNLOAD_PROGRESS_UPDATE_TYPE_APPEND
          | :FILE_DOWNLOAD_PROGRESS_UPDATE_TYPE_FORGET

  field :FILE_DOWNLOAD_PROGRESS_UPDATE_TYPE_APPEND, 0

  field :FILE_DOWNLOAD_PROGRESS_UPDATE_TYPE_FORGET, 1
end

defmodule Protocol.Hello do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          device_name: String.t(),
          client_name: String.t(),
          client_version: String.t()
        }

  defstruct [:device_name, :client_name, :client_version]

  field :device_name, 1, type: :string
  field :client_name, 2, type: :string
  field :client_version, 3, type: :string
end

defmodule Protocol.Header do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type: Protocol.MessageType.t(),
          compression: Protocol.MessageCompression.t()
        }

  defstruct [:type, :compression]

  field :type, 1, type: Protocol.MessageType, enum: true
  field :compression, 2, type: Protocol.MessageCompression, enum: true
end

defmodule Protocol.ClusterConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          folders: [Protocol.Folder.t()]
        }

  defstruct [:folders]

  field :folders, 1, repeated: true, type: Protocol.Folder
end

defmodule Protocol.Folder do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          id: String.t(),
          label: String.t(),
          read_only: boolean,
          ignore_permissions: boolean,
          ignore_delete: boolean,
          disable_temp_indexes: boolean,
          paused: boolean,
          devices: [Protocol.Device.t()]
        }

  defstruct [
    :id,
    :label,
    :read_only,
    :ignore_permissions,
    :ignore_delete,
    :disable_temp_indexes,
    :paused,
    :devices
  ]

  field :id, 1, type: :string
  field :label, 2, type: :string
  field :read_only, 3, type: :bool
  field :ignore_permissions, 4, type: :bool
  field :ignore_delete, 5, type: :bool
  field :disable_temp_indexes, 6, type: :bool
  field :paused, 7, type: :bool
  field :devices, 16, repeated: true, type: Protocol.Device
end

defmodule Protocol.Device do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          id: binary,
          name: String.t(),
          addresses: [String.t()],
          compression: Protocol.Compression.t(),
          cert_name: String.t(),
          max_sequence: integer,
          introducer: boolean,
          index_id: non_neg_integer,
          skip_introduction_removals: boolean,
          encryption_password_token: binary
        }

  defstruct [
    :id,
    :name,
    :addresses,
    :compression,
    :cert_name,
    :max_sequence,
    :introducer,
    :index_id,
    :skip_introduction_removals,
    :encryption_password_token
  ]

  field :id, 1, type: :bytes
  field :name, 2, type: :string
  field :addresses, 3, repeated: true, type: :string
  field :compression, 4, type: Protocol.Compression, enum: true
  field :cert_name, 5, type: :string
  field :max_sequence, 6, type: :int64
  field :introducer, 7, type: :bool
  field :index_id, 8, type: :uint64
  field :skip_introduction_removals, 9, type: :bool
  field :encryption_password_token, 10, type: :bytes
end

defmodule Protocol.Index do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          folder: String.t(),
          files: [Protocol.FileInfo.t()]
        }

  defstruct [:folder, :files]

  field :folder, 1, type: :string
  field :files, 2, repeated: true, type: Protocol.FileInfo
end

defmodule Protocol.IndexUpdate do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          folder: String.t(),
          files: [Protocol.FileInfo.t()]
        }

  defstruct [:folder, :files]

  field :folder, 1, type: :string
  field :files, 2, repeated: true, type: Protocol.FileInfo
end

defmodule Protocol.FileInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          size: integer,
          modified_s: integer,
          modified_by: non_neg_integer,
          version: Protocol.Vector.t() | nil,
          sequence: integer,
          blocks: [Protocol.BlockInfo.t()],
          symlink_target: String.t(),
          blocks_hash: binary,
          encrypted: binary,
          type: Protocol.FileInfoType.t(),
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
    :blocks,
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
  field :modified_s, 5, type: :int64
  field :modified_by, 12, type: :uint64
  field :version, 9, type: Protocol.Vector
  field :sequence, 10, type: :int64
  field :blocks, 16, repeated: true, type: Protocol.BlockInfo
  field :symlink_target, 17, type: :string
  field :blocks_hash, 18, type: :bytes
  field :encrypted, 19, type: :bytes
  field :type, 2, type: Protocol.FileInfoType, enum: true
  field :permissions, 4, type: :uint32
  field :modified_ns, 11, type: :int32
  field :block_size, 13, type: :int32
  field :local_flags, 1000, type: :uint32
  field :version_hash, 1001, type: :bytes
  field :deleted, 6, type: :bool
  field :invalid, 7, type: :bool
  field :no_permissions, 8, type: :bool
end

defmodule Protocol.BlockInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          hash: binary,
          offset: integer,
          size: integer,
          weak_hash: non_neg_integer
        }

  defstruct [:hash, :offset, :size, :weak_hash]

  field :hash, 3, type: :bytes
  field :offset, 1, type: :int64
  field :size, 2, type: :int32
  field :weak_hash, 4, type: :uint32
end

defmodule Protocol.Vector do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          counters: [Protocol.Counter.t()]
        }

  defstruct [:counters]

  field :counters, 1, repeated: true, type: Protocol.Counter
end

defmodule Protocol.Counter do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          id: non_neg_integer,
          value: non_neg_integer
        }

  defstruct [:id, :value]

  field :id, 1, type: :uint64
  field :value, 2, type: :uint64
end

defmodule Protocol.Request do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          id: integer,
          folder: String.t(),
          name: String.t(),
          offset: integer,
          size: integer,
          hash: binary,
          from_temporary: boolean,
          weak_hash: non_neg_integer,
          block_no: integer
        }

  defstruct [:id, :folder, :name, :offset, :size, :hash, :from_temporary, :weak_hash, :block_no]

  field :id, 1, type: :int32
  field :folder, 2, type: :string
  field :name, 3, type: :string
  field :offset, 4, type: :int64
  field :size, 5, type: :int32
  field :hash, 6, type: :bytes
  field :from_temporary, 7, type: :bool
  field :weak_hash, 8, type: :uint32
  field :block_no, 9, type: :int32
end

defmodule Protocol.Response do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          id: integer,
          data: binary,
          code: Protocol.ErrorCode.t()
        }

  defstruct [:id, :data, :code]

  field :id, 1, type: :int32
  field :data, 2, type: :bytes
  field :code, 3, type: Protocol.ErrorCode, enum: true
end

defmodule Protocol.DownloadProgress do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          folder: String.t(),
          updates: [Protocol.FileDownloadProgressUpdate.t()]
        }

  defstruct [:folder, :updates]

  field :folder, 1, type: :string
  field :updates, 2, repeated: true, type: Protocol.FileDownloadProgressUpdate
end

defmodule Protocol.FileDownloadProgressUpdate do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          update_type: Protocol.FileDownloadProgressUpdateType.t(),
          name: String.t(),
          version: Protocol.Vector.t() | nil,
          block_indexes: [integer],
          block_size: integer
        }

  defstruct [:update_type, :name, :version, :block_indexes, :block_size]

  field :update_type, 1, type: Protocol.FileDownloadProgressUpdateType, enum: true
  field :name, 2, type: :string
  field :version, 3, type: Protocol.Vector
  field :block_indexes, 4, repeated: true, type: :int32
  field :block_size, 5, type: :int32
end

defmodule Protocol.Ping do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end

defmodule Protocol.Close do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          reason: String.t()
        }

  defstruct [:reason]

  field :reason, 1, type: :string
end
