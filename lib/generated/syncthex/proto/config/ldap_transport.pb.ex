defmodule Syncthex.Proto.Config.LDAPTransport do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.EnumDescriptorProto{
      name: "LDAPTransport",
      value: [
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "LDAP_TRANSPORT_PLAIN",
          number: 0,
          options: %Google.Protobuf.EnumValueOptions{
            deprecated: false,
            uninterpreted_option: [],
            __pb_extensions__: %{},
            __unknown_fields__: [{76010, 2, "LDAPTransportPlain"}]
          },
          __unknown_fields__: []
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "LDAP_TRANSPORT_TLS",
          number: 2,
          options: %Google.Protobuf.EnumValueOptions{
            deprecated: false,
            uninterpreted_option: [],
            __pb_extensions__: %{},
            __unknown_fields__: [{76010, 2, "LDAPTransportTLS"}]
          },
          __unknown_fields__: []
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "LDAP_TRANSPORT_START_TLS",
          number: 3,
          options: %Google.Protobuf.EnumValueOptions{
            deprecated: false,
            uninterpreted_option: [],
            __pb_extensions__: %{},
            __unknown_fields__: [{76010, 2, "LDAPTransportStartTLS"}]
          },
          __unknown_fields__: []
        }
      ],
      options: %Google.Protobuf.EnumOptions{
        allow_alias: nil,
        deprecated: false,
        deprecated_legacy_json_field_conflicts: nil,
        uninterpreted_option: [],
        __pb_extensions__: %{},
        __unknown_fields__: [{62021, 0, 0}]
      },
      reserved_range: [],
      reserved_name: [],
      __unknown_fields__: []
    }
  end

  field :LDAP_TRANSPORT_PLAIN, 0
  field :LDAP_TRANSPORT_TLS, 2
  field :LDAP_TRANSPORT_START_TLS, 3
end