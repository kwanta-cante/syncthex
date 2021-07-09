defmodule Syncthex.Proto.GUIConfiguration do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          enabled: boolean,
          address: String.t(),
          unix_socket_permissions: String.t(),
          user: String.t(),
          password: String.t(),
          auth_mode: Syncthex.Proto.AuthMode.t(),
          use_tls: boolean,
          api_key: String.t(),
          insecure_admin_access: boolean,
          theme: String.t(),
          debugging: boolean,
          insecure_skip_host_check: boolean,
          insecure_allow_frame_loading: boolean
        }

  defstruct [
    :enabled,
    :address,
    :unix_socket_permissions,
    :user,
    :password,
    :auth_mode,
    :use_tls,
    :api_key,
    :insecure_admin_access,
    :theme,
    :debugging,
    :insecure_skip_host_check,
    :insecure_allow_frame_loading
  ]

  field :enabled, 1, type: :bool
  field :address, 2, type: :string
  field :unix_socket_permissions, 3, type: :string, json_name: "unixSocketPermissions"
  field :user, 4, type: :string
  field :password, 5, type: :string
  field :auth_mode, 6, type: Syncthex.Proto.AuthMode, enum: true, json_name: "authMode"
  field :use_tls, 7, type: :bool, json_name: "useTls"
  field :api_key, 8, type: :string, json_name: "apiKey"
  field :insecure_admin_access, 9, type: :bool, json_name: "insecureAdminAccess"
  field :theme, 10, type: :string
  field :debugging, 11, type: :bool
  field :insecure_skip_host_check, 12, type: :bool, json_name: "insecureSkipHostCheck"
  field :insecure_allow_frame_loading, 13, type: :bool, json_name: "insecureAllowFrameLoading"
end
