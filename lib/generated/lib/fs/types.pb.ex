defmodule Syncthex.Proto.Fs.FilesystemType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :FILESYSTEM_TYPE_BASIC | :FILESYSTEM_TYPE_FAKE

  def descriptor do
    # credo:disable-for-next-line
    Elixir.Google.Protobuf.EnumDescriptorProto.decode(
      <<10, 14, 70, 105, 108, 101, 115, 121, 115, 116, 101, 109, 84, 121, 112, 101, 18, 25, 10,
        21, 70, 73, 76, 69, 83, 89, 83, 84, 69, 77, 95, 84, 89, 80, 69, 95, 66, 65, 83, 73, 67,
        16, 0, 18, 24, 10, 20, 70, 73, 76, 69, 83, 89, 83, 84, 69, 77, 95, 84, 89, 80, 69, 95, 70,
        65, 75, 69, 16, 1, 26, 2, 24, 0>>
    )
  end

  def descriptor_plain do
    %Google.Protobuf.EnumDescriptorProto{
      name: "FilesystemType",
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
          name: "FILESYSTEM_TYPE_BASIC",
          number: 0,
          options: nil
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "FILESYSTEM_TYPE_FAKE",
          number: 1,
          options: nil
        }
      ]
    }
  end

  field :FILESYSTEM_TYPE_BASIC, 0
  field :FILESYSTEM_TYPE_FAKE, 1
end
