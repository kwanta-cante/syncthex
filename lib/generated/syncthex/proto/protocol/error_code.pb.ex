defmodule Syncthex.Proto.Protocol.ErrorCode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.EnumDescriptorProto{
      name: "ErrorCode",
      value: [
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "ERROR_CODE_NO_ERROR",
          number: 0,
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "ERROR_CODE_GENERIC",
          number: 1,
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "ERROR_CODE_NO_SUCH_FILE",
          number: 2,
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "ERROR_CODE_INVALID_FILE",
          number: 3,
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

  field :ERROR_CODE_NO_ERROR, 0
  field :ERROR_CODE_GENERIC, 1
  field :ERROR_CODE_NO_SUCH_FILE, 2
  field :ERROR_CODE_INVALID_FILE, 3
end