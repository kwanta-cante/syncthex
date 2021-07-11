defmodule Syncthex.Proto.Config.LDAPTransport do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :LDAP_TRANSPORT_PLAIN | :LDAP_TRANSPORT_TLS | :LDAP_TRANSPORT_START_TLS

  def descriptor do
    # credo:disable-for-next-line
    Elixir.Google.Protobuf.EnumDescriptorProto.decode(
      <<10, 13, 76, 68, 65, 80, 84, 114, 97, 110, 115, 112, 111, 114, 116, 18, 28, 10, 20, 76, 68,
        65, 80, 95, 84, 82, 65, 78, 83, 80, 79, 82, 84, 95, 80, 76, 65, 73, 78, 16, 0, 26, 2, 8,
        0, 18, 26, 10, 18, 76, 68, 65, 80, 95, 84, 82, 65, 78, 83, 80, 79, 82, 84, 95, 84, 76, 83,
        16, 2, 26, 2, 8, 0, 18, 32, 10, 24, 76, 68, 65, 80, 95, 84, 82, 65, 78, 83, 80, 79, 82,
        84, 95, 83, 84, 65, 82, 84, 95, 84, 76, 83, 16, 3, 26, 2, 8, 0, 26, 2, 24, 0>>
    )
  end

  def descriptor_plain do
    %Google.Protobuf.EnumDescriptorProto{
      name: "LDAPTransport",
      options: %Google.Protobuf.EnumOptions{
        __pb_extensions__: %{},
        allow_alias: nil,
        deprecated: false,
        uninterpreted_option: []
      },
      reserved_name: [],
      reserved_range: [],
      value: [
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "LDAP_TRANSPORT_PLAIN",
          number: 0,
          options: %Google.Protobuf.EnumValueOptions{
            __pb_extensions__: %{},
            deprecated: false,
            uninterpreted_option: []
          }
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "LDAP_TRANSPORT_TLS",
          number: 2,
          options: %Google.Protobuf.EnumValueOptions{
            __pb_extensions__: %{},
            deprecated: false,
            uninterpreted_option: []
          }
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "LDAP_TRANSPORT_START_TLS",
          number: 3,
          options: %Google.Protobuf.EnumValueOptions{
            __pb_extensions__: %{},
            deprecated: false,
            uninterpreted_option: []
          }
        }
      ]
    }
  end

  field :LDAP_TRANSPORT_PLAIN, 0
  field :LDAP_TRANSPORT_TLS, 2
  field :LDAP_TRANSPORT_START_TLS, 3
end
