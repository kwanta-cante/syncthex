defmodule Syncthex.Proto.Config.AuthMode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.EnumDescriptorProto{
      name: "AuthMode",
      value: [
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "AUTH_MODE_STATIC",
          number: 0,
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "AUTH_MODE_LDAP",
          number: 1,
          options: %Google.Protobuf.EnumValueOptions{
            deprecated: false,
            uninterpreted_option: [],
            __pb_extensions__: %{},
            __unknown_fields__: [{76010, 2, "AuthModeLDAP"}]
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

  field :AUTH_MODE_STATIC, 0
  field :AUTH_MODE_LDAP, 1
end