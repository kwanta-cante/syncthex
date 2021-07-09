defmodule Syncthex.Proto.LDAPTransport do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :LDAP_TRANSPORT_PLAIN | :LDAP_TRANSPORT_TLS | :LDAP_TRANSPORT_START_TLS

  field :LDAP_TRANSPORT_PLAIN, 0
  field :LDAP_TRANSPORT_TLS, 2
  field :LDAP_TRANSPORT_START_TLS, 3
end
