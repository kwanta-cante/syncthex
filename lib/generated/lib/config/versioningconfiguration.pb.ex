defmodule Syncthex.Proto.VersioningConfiguration.ParametersEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Syncthex.Proto.VersioningConfiguration do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type: String.t(),
          parameters: %{String.t() => String.t()},
          cleanup_interval_s: integer,
          fs_path: String.t(),
          fs_type: Syncthex.Proto.FilesystemType.t()
        }

  defstruct [:type, :parameters, :cleanup_interval_s, :fs_path, :fs_type]

  field :type, 1, type: :string

  field :parameters, 2,
    repeated: true,
    type: Syncthex.Proto.VersioningConfiguration.ParametersEntry,
    map: true

  field :cleanup_interval_s, 3, type: :int32, json_name: "cleanupIntervalS"
  field :fs_path, 4, type: :string, json_name: "fsPath"
  field :fs_type, 5, type: Syncthex.Proto.FilesystemType, enum: true, json_name: "fsType"
end
