defmodule Syncthex.Proto.Config.Tuning do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.EnumDescriptorProto{
      name: "Tuning",
      value: [
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "TUNING_AUTO",
          number: 0,
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "TUNING_SMALL",
          number: 1,
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "TUNING_LARGE",
          number: 2,
          options: nil,
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

  field :TUNING_AUTO, 0
  field :TUNING_SMALL, 1
  field :TUNING_LARGE, 2
end