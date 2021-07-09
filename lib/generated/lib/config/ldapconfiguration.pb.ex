defmodule Syncthex.Proto.LDAPConfiguration do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          address: String.t(),
          bind_dn: String.t(),
          transport: Syncthex.Proto.LDAPTransport.t(),
          insecure_skip_verify: boolean,
          search_base_dn: String.t(),
          search_filter: String.t()
        }

  defstruct [
    :address,
    :bind_dn,
    :transport,
    :insecure_skip_verify,
    :search_base_dn,
    :search_filter
  ]

  field :address, 1, type: :string
  field :bind_dn, 2, type: :string, json_name: "bindDn"
  field :transport, 3, type: Syncthex.Proto.LDAPTransport, enum: true
  field :insecure_skip_verify, 4, type: :bool, json_name: "insecureSkipVerify"
  field :search_base_dn, 5, type: :string, json_name: "searchBaseDn"
  field :search_filter, 6, type: :string, json_name: "searchFilter"
end
