defmodule Syncthex.Proto.Protocol.DownloadProgress do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "DownloadProgress",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "folder",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "folder",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "updates",
          extendee: nil,
          number: 2,
          label: :LABEL_REPEATED,
          type: :TYPE_MESSAGE,
          type_name: ".protocol.FileDownloadProgressUpdate",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "updates",
          proto3_optional: nil,
          __unknown_fields__: []
        }
      ],
      nested_type: [],
      enum_type: [],
      extension_range: [],
      extension: [],
      options: nil,
      oneof_decl: [],
      reserved_range: [],
      reserved_name: [],
      __unknown_fields__: []
    }
  end

  field :folder, 1, type: :string
  field :updates, 2, repeated: true, type: Syncthex.Proto.Protocol.FileDownloadProgressUpdate
end