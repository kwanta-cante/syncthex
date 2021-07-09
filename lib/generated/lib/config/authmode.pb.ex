defmodule Syncthex.Proto.AuthMode do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :AUTH_MODE_STATIC | :AUTH_MODE_LDAP

  field :AUTH_MODE_STATIC, 0
  field :AUTH_MODE_LDAP, 1
end
