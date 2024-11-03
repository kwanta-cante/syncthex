defmodule Syncthex.Proto.Protocol.FileInfoType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.EnumDescriptorProto{
      name: "FileInfoType",
      value: [
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "FILE_INFO_TYPE_FILE",
          number: 0,
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "FILE_INFO_TYPE_DIRECTORY",
          number: 1,
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "FILE_INFO_TYPE_SYMLINK_FILE",
          number: 2,
          options: %Google.Protobuf.EnumValueOptions{
            deprecated: true,
            uninterpreted_option: [],
            __pb_extensions__: %{},
            __unknown_fields__: []
          },
          __unknown_fields__: []
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "FILE_INFO_TYPE_SYMLINK_DIRECTORY",
          number: 3,
          options: %Google.Protobuf.EnumValueOptions{
            deprecated: true,
            uninterpreted_option: [],
            __pb_extensions__: %{},
            __unknown_fields__: []
          },
          __unknown_fields__: []
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "FILE_INFO_TYPE_SYMLINK",
          number: 4,
          options: nil,
          __unknown_fields__: []
        }
      ],
      options: nil,
      reserved_range: [],
      reserved_name: [],
      __unknown_fields__: []
    }
  end

  field :FILE_INFO_TYPE_FILE, 0
  field :FILE_INFO_TYPE_DIRECTORY, 1
  field :FILE_INFO_TYPE_SYMLINK_FILE, 2
  field :FILE_INFO_TYPE_SYMLINK_DIRECTORY, 3
  field :FILE_INFO_TYPE_SYMLINK, 4
end