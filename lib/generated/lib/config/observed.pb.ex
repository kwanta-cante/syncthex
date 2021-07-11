defmodule Syncthex.Proto.Config.ObservedFolder do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          time: Google.Protobuf.Timestamp.t() | nil,
          id: String.t(),
          label: String.t()
        }

  defstruct [:time, :id, :label]

  def descriptor do
    # credo:disable-for-next-line
    Elixir.Google.Protobuf.DescriptorProto.decode(
      <<10, 14, 79, 98, 115, 101, 114, 118, 101, 100, 70, 111, 108, 100, 101, 114, 18, 54, 10, 4,
        116, 105, 109, 101, 24, 1, 32, 1, 40, 11, 50, 26, 46, 103, 111, 111, 103, 108, 101, 46,
        112, 114, 111, 116, 111, 98, 117, 102, 46, 84, 105, 109, 101, 115, 116, 97, 109, 112, 66,
        6, 24, 0, 40, 0, 80, 0, 82, 4, 116, 105, 109, 101, 18, 22, 10, 2, 105, 100, 24, 2, 32, 1,
        40, 9, 66, 6, 24, 0, 40, 0, 80, 0, 82, 2, 105, 100, 18, 28, 10, 5, 108, 97, 98, 101, 108,
        24, 3, 32, 1, 40, 9, 66, 6, 24, 0, 40, 0, 80, 0, 82, 5, 108, 97, 98, 101, 108>>
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
          json_name: "time",
          label: :LABEL_OPTIONAL,
          name: "time",
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
          type: :TYPE_MESSAGE,
          type_name: ".google.protobuf.Timestamp"
        },
        %Google.Protobuf.FieldDescriptorProto{
          default_value: nil,
          extendee: nil,
          json_name: "id",
          label: :LABEL_OPTIONAL,
          name: "id",
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
        },
        %Google.Protobuf.FieldDescriptorProto{
          default_value: nil,
          extendee: nil,
          json_name: "label",
          label: :LABEL_OPTIONAL,
          name: "label",
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
          type: :TYPE_STRING,
          type_name: nil
        }
      ],
      name: "ObservedFolder",
      nested_type: [],
      oneof_decl: [],
      options: nil,
      reserved_name: [],
      reserved_range: []
    }
  end

  field :time, 1, type: Google.Protobuf.Timestamp
  field :id, 2, type: :string
  field :label, 3, type: :string
end

defmodule Syncthex.Proto.Config.ObservedDevice do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          time: Google.Protobuf.Timestamp.t() | nil,
          id: binary,
          name: String.t(),
          address: String.t()
        }

  defstruct [:time, :id, :name, :address]

  def descriptor do
    # credo:disable-for-next-line
    Elixir.Google.Protobuf.DescriptorProto.decode(
      <<10, 14, 79, 98, 115, 101, 114, 118, 101, 100, 68, 101, 118, 105, 99, 101, 18, 54, 10, 4,
        116, 105, 109, 101, 24, 1, 32, 1, 40, 11, 50, 26, 46, 103, 111, 111, 103, 108, 101, 46,
        112, 114, 111, 116, 111, 98, 117, 102, 46, 84, 105, 109, 101, 115, 116, 97, 109, 112, 66,
        6, 24, 0, 40, 0, 80, 0, 82, 4, 116, 105, 109, 101, 18, 28, 10, 2, 105, 100, 24, 2, 32, 1,
        40, 12, 66, 6, 24, 0, 40, 0, 80, 0, 82, 8, 100, 101, 118, 105, 99, 101, 73, 68, 18, 26,
        10, 4, 110, 97, 109, 101, 24, 3, 32, 1, 40, 9, 66, 6, 24, 0, 40, 0, 80, 0, 82, 4, 110, 97,
        109, 101, 18, 32, 10, 7, 97, 100, 100, 114, 101, 115, 115, 24, 4, 32, 1, 40, 9, 66, 6, 24,
        0, 40, 0, 80, 0, 82, 7, 97, 100, 100, 114, 101, 115, 115>>
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
          json_name: "time",
          label: :LABEL_OPTIONAL,
          name: "time",
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
          type: :TYPE_MESSAGE,
          type_name: ".google.protobuf.Timestamp"
        },
        %Google.Protobuf.FieldDescriptorProto{
          default_value: nil,
          extendee: nil,
          json_name: "deviceID",
          label: :LABEL_OPTIONAL,
          name: "id",
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
          type: :TYPE_BYTES,
          type_name: nil
        },
        %Google.Protobuf.FieldDescriptorProto{
          default_value: nil,
          extendee: nil,
          json_name: "name",
          label: :LABEL_OPTIONAL,
          name: "name",
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
          type: :TYPE_STRING,
          type_name: nil
        },
        %Google.Protobuf.FieldDescriptorProto{
          default_value: nil,
          extendee: nil,
          json_name: "address",
          label: :LABEL_OPTIONAL,
          name: "address",
          number: 4,
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
      name: "ObservedDevice",
      nested_type: [],
      oneof_decl: [],
      options: nil,
      reserved_name: [],
      reserved_range: []
    }
  end

  field :time, 1, type: Google.Protobuf.Timestamp
  field :id, 2, type: :bytes, json_name: "deviceID"
  field :name, 3, type: :string
  field :address, 4, type: :string
end
