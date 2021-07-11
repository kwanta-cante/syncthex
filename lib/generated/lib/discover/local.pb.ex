defmodule Syncthex.Proto.Discover.Announce do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          id: binary,
          addresses: String.t(),
          instance_id: integer
        }

  defstruct [:id, :addresses, :instance_id]

  def descriptor do
    # credo:disable-for-next-line
    Elixir.Google.Protobuf.DescriptorProto.decode(
      <<10, 8, 65, 110, 110, 111, 117, 110, 99, 101, 18, 22, 10, 2, 105, 100, 24, 1, 32, 1, 40,
        12, 66, 6, 24, 0, 40, 0, 80, 0, 82, 2, 105, 100, 18, 28, 10, 9, 97, 100, 100, 114, 101,
        115, 115, 101, 115, 24, 2, 32, 3, 40, 9, 82, 9, 97, 100, 100, 114, 101, 115, 115, 101,
        115, 18, 39, 10, 11, 105, 110, 115, 116, 97, 110, 99, 101, 95, 105, 100, 24, 3, 32, 1, 40,
        3, 66, 6, 24, 0, 40, 0, 80, 0, 82, 10, 105, 110, 115, 116, 97, 110, 99, 101, 73, 100>>
    )
  end

  def descriptor_plain do
    %Google.Protobuf.DescriptorProto{
      enum_type: [],
      extension: [],
      extension_range: [],
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          default_value: nil,
          extendee: nil,
          json_name: "id",
          label: :LABEL_OPTIONAL,
          name: "id",
          number: 1,
          oneof_index: nil,
          options: %Google.Protobuf.FieldOptions{
            __pb_extensions__: %{},
            ctype: :STRING,
            deprecated: false,
            jstype: :JS_NORMAL,
            lazy: false,
            packed: nil,
            uninterpreted_option: [],
            weak: false
          },
          proto3_optional: nil,
          type: :TYPE_BYTES,
          type_name: nil
        },
        %Google.Protobuf.FieldDescriptorProto{
          default_value: nil,
          extendee: nil,
          json_name: "addresses",
          label: :LABEL_REPEATED,
          name: "addresses",
          number: 2,
          oneof_index: nil,
          options: nil,
          proto3_optional: nil,
          type: :TYPE_STRING,
          type_name: nil
        },
        %Google.Protobuf.FieldDescriptorProto{
          default_value: nil,
          extendee: nil,
          json_name: "instanceId",
          label: :LABEL_OPTIONAL,
          name: "instance_id",
          number: 3,
          oneof_index: nil,
          options: %Google.Protobuf.FieldOptions{
            __pb_extensions__: %{},
            ctype: :STRING,
            deprecated: false,
            jstype: :JS_NORMAL,
            lazy: false,
            packed: nil,
            uninterpreted_option: [],
            weak: false
          },
          proto3_optional: nil,
          type: :TYPE_INT64,
          type_name: nil
        }
      ],
      name: "Announce",
      nested_type: [],
      oneof_decl: [],
      options: nil,
      reserved_name: [],
      reserved_range: []
    }
  end

  field :id, 1, type: :bytes
  field :addresses, 2, repeated: true, type: :string
  field :instance_id, 3, type: :int64, json_name: "instanceId"
end
