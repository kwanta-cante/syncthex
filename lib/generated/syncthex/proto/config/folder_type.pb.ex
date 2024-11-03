defmodule Syncthex.Proto.Config.FolderType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.EnumDescriptorProto{
      name: "FolderType",
      value: [
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "FOLDER_TYPE_SEND_RECEIVE",
          number: 0,
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "FOLDER_TYPE_SEND_ONLY",
          number: 1,
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "FOLDER_TYPE_RECEIVE_ONLY",
          number: 2,
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "FOLDER_TYPE_RECEIVE_ENCRYPTED",
          number: 3,
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

  field :FOLDER_TYPE_SEND_RECEIVE, 0
  field :FOLDER_TYPE_SEND_ONLY, 1
  field :FOLDER_TYPE_RECEIVE_ONLY, 2
  field :FOLDER_TYPE_RECEIVE_ENCRYPTED, 3
end