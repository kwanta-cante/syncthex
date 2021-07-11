defmodule Syncthex.Proto.Config.FolderType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :FOLDER_TYPE_SEND_RECEIVE
          | :FOLDER_TYPE_SEND_ONLY
          | :FOLDER_TYPE_RECEIVE_ONLY
          | :FOLDER_TYPE_RECEIVE_ENCRYPTED

  def descriptor do
    # credo:disable-for-next-line
    Elixir.Google.Protobuf.EnumDescriptorProto.decode(
      <<10, 10, 70, 111, 108, 100, 101, 114, 84, 121, 112, 101, 18, 28, 10, 24, 70, 79, 76, 68,
        69, 82, 95, 84, 89, 80, 69, 95, 83, 69, 78, 68, 95, 82, 69, 67, 69, 73, 86, 69, 16, 0, 18,
        25, 10, 21, 70, 79, 76, 68, 69, 82, 95, 84, 89, 80, 69, 95, 83, 69, 78, 68, 95, 79, 78,
        76, 89, 16, 1, 18, 28, 10, 24, 70, 79, 76, 68, 69, 82, 95, 84, 89, 80, 69, 95, 82, 69, 67,
        69, 73, 86, 69, 95, 79, 78, 76, 89, 16, 2, 18, 33, 10, 29, 70, 79, 76, 68, 69, 82, 95, 84,
        89, 80, 69, 95, 82, 69, 67, 69, 73, 86, 69, 95, 69, 78, 67, 82, 89, 80, 84, 69, 68, 16, 3,
        26, 2, 24, 0>>
    )
  end

  def descriptor_plain do
    %Google.Protobuf.EnumDescriptorProto{
      name: "FolderType",
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
          name: "FOLDER_TYPE_SEND_RECEIVE",
          number: 0,
          options: nil
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "FOLDER_TYPE_SEND_ONLY",
          number: 1,
          options: nil
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "FOLDER_TYPE_RECEIVE_ONLY",
          number: 2,
          options: nil
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "FOLDER_TYPE_RECEIVE_ENCRYPTED",
          number: 3,
          options: nil
        }
      ]
    }
  end

  field :FOLDER_TYPE_SEND_RECEIVE, 0
  field :FOLDER_TYPE_SEND_ONLY, 1
  field :FOLDER_TYPE_RECEIVE_ONLY, 2
  field :FOLDER_TYPE_RECEIVE_ENCRYPTED, 3
end
