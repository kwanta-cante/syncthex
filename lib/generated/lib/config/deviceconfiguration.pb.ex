defmodule Syncthex.Proto.DeviceConfiguration do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          device_id: binary,
          name: String.t(),
          addresses: String.t(),
          compression: Syncthex.Proto.Compression.t(),
          cert_name: String.t(),
          introducer: boolean,
          skip_introduction_removals: boolean,
          introduced_by: binary,
          paused: boolean,
          allowed_networks: String.t(),
          auto_accept_folders: boolean,
          max_send_kbps: integer,
          max_recv_kbps: integer,
          ignored_folders: [Syncthex.Proto.ObservedFolder.t()],
          pending_folders: [Syncthex.Proto.ObservedFolder.t()],
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

  field :device_id, 1, type: :bytes, json_name: "deviceId"
  field :name, 2, type: :string
  field :addresses, 3, repeated: true, type: :string
  field :compression, 4, type: Syncthex.Proto.Compression, enum: true
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
    type: Syncthex.Proto.ObservedFolder,
    json_name: "ignoredFolders"

  field :pending_folders, 15,
    repeated: true,
    type: Syncthex.Proto.ObservedFolder,
    deprecated: true,
    json_name: "pendingFolders"

  field :max_request_kib, 16, type: :int32, json_name: "maxRequestKib"
  field :untrusted, 17, type: :bool
  field :remote_gui_port, 18, type: :int32, json_name: "remoteGuiPort"
end
