defmodule Syncthex.Proto.Config.AuthMode do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :AUTH_MODE_STATIC | :AUTH_MODE_LDAP

  def descriptor do
    # credo:disable-for-next-line
    Elixir.Google.Protobuf.EnumDescriptorProto.decode(
      <<10, 8, 65, 117, 116, 104, 77, 111, 100, 101, 18, 20, 10, 16, 65, 85, 84, 72, 95, 77, 79,
        68, 69, 95, 83, 84, 65, 84, 73, 67, 16, 0, 18, 22, 10, 14, 65, 85, 84, 72, 95, 77, 79, 68,
        69, 95, 76, 68, 65, 80, 16, 1, 26, 2, 8, 0, 26, 2, 24, 0>>
    )
  end

  def descriptor_plain do
    %Google.Protobuf.EnumDescriptorProto{
      name: "AuthMode",
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
          name: "AUTH_MODE_STATIC",
          number: 0,
          options: nil
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "AUTH_MODE_LDAP",
          number: 1,
          options: %Google.Protobuf.EnumValueOptions{
            __pb_extensions__: %{},
            deprecated: false,
            uninterpreted_option: []
          }
        }
      ]
    }
  end

  field :AUTH_MODE_STATIC, 0
  field :AUTH_MODE_LDAP, 1
end
