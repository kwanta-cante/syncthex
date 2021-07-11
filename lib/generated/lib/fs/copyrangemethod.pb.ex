defmodule Syncthex.Proto.Fs.CopyRangeMethod do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :COPY_RANGE_METHOD_STANDARD
          | :COPY_RANGE_METHOD_IOCTL
          | :COPY_RANGE_METHOD_COPY_FILE_RANGE
          | :COPY_RANGE_METHOD_SEND_FILE
          | :COPY_RANGE_METHOD_DUPLICATE_EXTENTS
          | :COPY_RANGE_METHOD_ALL_WITH_FALLBACK

  def descriptor do
    # credo:disable-for-next-line
    Elixir.Google.Protobuf.EnumDescriptorProto.decode(
      <<10, 15, 67, 111, 112, 121, 82, 97, 110, 103, 101, 77, 101, 116, 104, 111, 100, 18, 30, 10,
        26, 67, 79, 80, 89, 95, 82, 65, 78, 71, 69, 95, 77, 69, 84, 72, 79, 68, 95, 83, 84, 65,
        78, 68, 65, 82, 68, 16, 0, 18, 27, 10, 23, 67, 79, 80, 89, 95, 82, 65, 78, 71, 69, 95, 77,
        69, 84, 72, 79, 68, 95, 73, 79, 67, 84, 76, 16, 1, 18, 37, 10, 33, 67, 79, 80, 89, 95, 82,
        65, 78, 71, 69, 95, 77, 69, 84, 72, 79, 68, 95, 67, 79, 80, 89, 95, 70, 73, 76, 69, 95,
        82, 65, 78, 71, 69, 16, 2, 18, 31, 10, 27, 67, 79, 80, 89, 95, 82, 65, 78, 71, 69, 95, 77,
        69, 84, 72, 79, 68, 95, 83, 69, 78, 68, 95, 70, 73, 76, 69, 16, 3, 18, 39, 10, 35, 67, 79,
        80, 89, 95, 82, 65, 78, 71, 69, 95, 77, 69, 84, 72, 79, 68, 95, 68, 85, 80, 76, 73, 67,
        65, 84, 69, 95, 69, 88, 84, 69, 78, 84, 83, 16, 4, 18, 39, 10, 35, 67, 79, 80, 89, 95, 82,
        65, 78, 71, 69, 95, 77, 69, 84, 72, 79, 68, 95, 65, 76, 76, 95, 87, 73, 84, 72, 95, 70,
        65, 76, 76, 66, 65, 67, 75, 16, 5, 26, 2, 24, 0>>
    )
  end

  def descriptor_plain do
    %Google.Protobuf.EnumDescriptorProto{
      name: "CopyRangeMethod",
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
          name: "COPY_RANGE_METHOD_STANDARD",
          number: 0,
          options: nil
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "COPY_RANGE_METHOD_IOCTL",
          number: 1,
          options: nil
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "COPY_RANGE_METHOD_COPY_FILE_RANGE",
          number: 2,
          options: nil
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "COPY_RANGE_METHOD_SEND_FILE",
          number: 3,
          options: nil
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "COPY_RANGE_METHOD_DUPLICATE_EXTENTS",
          number: 4,
          options: nil
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "COPY_RANGE_METHOD_ALL_WITH_FALLBACK",
          number: 5,
          options: nil
        }
      ]
    }
  end

  field :COPY_RANGE_METHOD_STANDARD, 0
  field :COPY_RANGE_METHOD_IOCTL, 1
  field :COPY_RANGE_METHOD_COPY_FILE_RANGE, 2
  field :COPY_RANGE_METHOD_SEND_FILE, 3
  field :COPY_RANGE_METHOD_DUPLICATE_EXTENTS, 4
  field :COPY_RANGE_METHOD_ALL_WITH_FALLBACK, 5
end
