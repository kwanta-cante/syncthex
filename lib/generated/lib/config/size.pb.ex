defmodule Syncthex.Proto.Config.Size do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          value: float | :infinity | :negative_infinity | :nan,
          unit: String.t()
        }

  defstruct [:value, :unit]

  def descriptor do
    # credo:disable-for-next-line
    Elixir.Google.Protobuf.DescriptorProto.decode(
      <<10, 4, 83, 105, 122, 101, 18, 28, 10, 5, 118, 97, 108, 117, 101, 24, 1, 32, 1, 40, 1, 66,
        6, 24, 0, 40, 0, 80, 0, 82, 5, 118, 97, 108, 117, 101, 18, 26, 10, 4, 117, 110, 105, 116,
        24, 2, 32, 1, 40, 9, 66, 6, 24, 0, 40, 0, 80, 0, 82, 4, 117, 110, 105, 116, 58, 6, 8, 0,
        16, 0, 24, 0>>
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
          json_name: "value",
          label: :LABEL_OPTIONAL,
          name: "value",
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
          type: :TYPE_DOUBLE,
          type_name: nil
        },
        %Google.Protobuf.FieldDescriptorProto{
          default_value: nil,
          extendee: nil,
          json_name: "unit",
          label: :LABEL_OPTIONAL,
          name: "unit",
          number: 2,
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
          type: :TYPE_STRING,
          type_name: nil
        }
      ],
      name: "Size",
      nested_type: [],
      oneof_decl: [],
      options: %Google.Protobuf.MessageOptions{
        __pb_extensions__: %{},
        deprecated: false,
        map_entry: nil,
        message_set_wire_format: false,
        no_standard_descriptor_accessor: false,
        uninterpreted_option: []
      },
      reserved_name: [],
      reserved_range: []
    }
  end

  field :value, 1, type: :double
  field :unit, 2, type: :string
end
