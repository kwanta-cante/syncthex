defmodule Syncthex.Proto.Protocol.FileDownloadProgressUpdateType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.EnumDescriptorProto{
      name: "FileDownloadProgressUpdateType",
      value: [
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "FILE_DOWNLOAD_PROGRESS_UPDATE_TYPE_APPEND",
          number: 0,
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "FILE_DOWNLOAD_PROGRESS_UPDATE_TYPE_FORGET",
          number: 1,
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

  field :FILE_DOWNLOAD_PROGRESS_UPDATE_TYPE_APPEND, 0
  field :FILE_DOWNLOAD_PROGRESS_UPDATE_TYPE_FORGET, 1
end