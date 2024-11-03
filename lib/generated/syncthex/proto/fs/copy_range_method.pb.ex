defmodule Syncthex.Proto.Fs.CopyRangeMethod do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.EnumDescriptorProto{
      name: "CopyRangeMethod",
      value: [
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "COPY_RANGE_METHOD_STANDARD",
          number: 0,
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "COPY_RANGE_METHOD_IOCTL",
          number: 1,
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "COPY_RANGE_METHOD_COPY_FILE_RANGE",
          number: 2,
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "COPY_RANGE_METHOD_SEND_FILE",
          number: 3,
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "COPY_RANGE_METHOD_DUPLICATE_EXTENTS",
          number: 4,
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "COPY_RANGE_METHOD_ALL_WITH_FALLBACK",
          number: 5,
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

  field :COPY_RANGE_METHOD_STANDARD, 0
  field :COPY_RANGE_METHOD_IOCTL, 1
  field :COPY_RANGE_METHOD_COPY_FILE_RANGE, 2
  field :COPY_RANGE_METHOD_SEND_FILE, 3
  field :COPY_RANGE_METHOD_DUPLICATE_EXTENTS, 4
  field :COPY_RANGE_METHOD_ALL_WITH_FALLBACK, 5
end