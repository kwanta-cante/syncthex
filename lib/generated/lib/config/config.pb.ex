defmodule Syncthex.Proto.Configuration do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          version: integer,
          folders: [Syncthex.Proto.FolderConfiguration.t()],
          devices: [Syncthex.Proto.DeviceConfiguration.t()],
          gui: Syncthex.Proto.GUIConfiguration.t() | nil,
          ldap: Syncthex.Proto.LDAPConfiguration.t() | nil,
          options: Syncthex.Proto.OptionsConfiguration.t() | nil,
          ignored_devices: [Syncthex.Proto.ObservedDevice.t()],
          pending_devices: [Syncthex.Proto.ObservedDevice.t()],
          defaults: Syncthex.Proto.Defaults.t() | nil
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

  field :version, 1, type: :int32
  field :folders, 2, repeated: true, type: Syncthex.Proto.FolderConfiguration
  field :devices, 3, repeated: true, type: Syncthex.Proto.DeviceConfiguration
  field :gui, 4, type: Syncthex.Proto.GUIConfiguration
  field :ldap, 5, type: Syncthex.Proto.LDAPConfiguration
  field :options, 6, type: Syncthex.Proto.OptionsConfiguration

  field :ignored_devices, 7,
    repeated: true,
    type: Syncthex.Proto.ObservedDevice,
    json_name: "ignoredDevices"

  field :pending_devices, 8,
    repeated: true,
    type: Syncthex.Proto.ObservedDevice,
    deprecated: true,
    json_name: "pendingDevices"

  field :defaults, 9, type: Syncthex.Proto.Defaults
end

defmodule Syncthex.Proto.Defaults do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          folder: Syncthex.Proto.FolderConfiguration.t() | nil,
          device: Syncthex.Proto.DeviceConfiguration.t() | nil
        }

  defstruct [:folder, :device]

  field :folder, 1, type: Syncthex.Proto.FolderConfiguration
  field :device, 2, type: Syncthex.Proto.DeviceConfiguration
end
