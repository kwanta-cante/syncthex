defmodule Syncthex.Proto.Config.VersioningConfiguration.ParametersEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct [:key, :value]

  def descriptor do
    # credo:disable-for-next-line
    Elixir.Google.Protobuf.DescriptorProto.decode(
      <<10, 15, 80, 97, 114, 97, 109, 101, 116, 101, 114, 115, 69, 110, 116, 114, 121, 18, 16, 10,
        3, 107, 101, 121, 24, 1, 32, 1, 40, 9, 82, 3, 107, 101, 121, 18, 20, 10, 5, 118, 97, 108,
        117, 101, 24, 2, 32, 1, 40, 9, 82, 5, 118, 97, 108, 117, 101, 58, 8, 8, 0, 16, 0, 24, 0,
        56, 1>>
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
          json_name: "key",
          label: :LABEL_OPTIONAL,
          name: "key",
          number: 1,
          oneof_index: nil,
          options: nil,
          proto3_optional: nil,
          type: :TYPE_STRING,
          type_name: nil
        },
        %Google.Protobuf.FieldDescriptorProto{
          default_value: nil,
          extendee: nil,
          json_name: "value",
          label: :LABEL_OPTIONAL,
          name: "value",
          number: 2,
          oneof_index: nil,
          options: nil,
          proto3_optional: nil,
          type: :TYPE_STRING,
          type_name: nil
        }
      ],
      name: "ParametersEntry",
      nested_type: [],
      oneof_decl: [],
      options: %Google.Protobuf.MessageOptions{
        __pb_extensions__: %{},
        deprecated: false,
        map_entry: true,
        message_set_wire_format: false,
        no_standard_descriptor_accessor: false,
        uninterpreted_option: []
      },
      reserved_name: [],
      reserved_range: []
    }
  end

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Syncthex.Proto.Config.VersioningConfiguration do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type: String.t(),
          parameters: %{String.t() => String.t()},
          cleanup_interval_s: integer,
          fs_path: String.t(),
          fs_type: Syncthex.Proto.Fs.FilesystemType.t()
        }

  defstruct [:type, :parameters, :cleanup_interval_s, :fs_path, :fs_type]

  def descriptor do
    # credo:disable-for-next-line
    Elixir.Google.Protobuf.DescriptorProto.decode(
      <<10, 23, 86, 101, 114, 115, 105, 111, 110, 105, 110, 103, 67, 111, 110, 102, 105, 103, 117,
        114, 97, 116, 105, 111, 110, 18, 26, 10, 4, 116, 121, 112, 101, 24, 1, 32, 1, 40, 9, 66,
        6, 24, 0, 40, 0, 80, 0, 82, 4, 116, 121, 112, 101, 18, 83, 10, 10, 112, 97, 114, 97, 109,
        101, 116, 101, 114, 115, 24, 2, 32, 3, 40, 11, 50, 47, 46, 99, 111, 110, 102, 105, 103,
        46, 86, 101, 114, 115, 105, 111, 110, 105, 110, 103, 67, 111, 110, 102, 105, 103, 117,
        114, 97, 116, 105, 111, 110, 46, 80, 97, 114, 97, 109, 101, 116, 101, 114, 115, 69, 110,
        116, 114, 121, 66, 6, 24, 0, 40, 0, 80, 0, 82, 6, 112, 97, 114, 97, 109, 115, 18, 52, 10,
        18, 99, 108, 101, 97, 110, 117, 112, 95, 105, 110, 116, 101, 114, 118, 97, 108, 95, 115,
        24, 3, 32, 1, 40, 5, 66, 6, 24, 0, 40, 0, 80, 0, 82, 16, 99, 108, 101, 97, 110, 117, 112,
        73, 110, 116, 101, 114, 118, 97, 108, 83, 18, 31, 10, 7, 102, 115, 95, 112, 97, 116, 104,
        24, 4, 32, 1, 40, 9, 66, 6, 24, 0, 40, 0, 80, 0, 82, 6, 102, 115, 80, 97, 116, 104, 18,
        51, 10, 7, 102, 115, 95, 116, 121, 112, 101, 24, 5, 32, 1, 40, 14, 50, 18, 46, 102, 115,
        46, 70, 105, 108, 101, 115, 121, 115, 116, 101, 109, 84, 121, 112, 101, 66, 6, 24, 0, 40,
        0, 80, 0, 82, 6, 102, 115, 84, 121, 112, 101, 26, 67, 10, 15, 80, 97, 114, 97, 109, 101,
        116, 101, 114, 115, 69, 110, 116, 114, 121, 18, 16, 10, 3, 107, 101, 121, 24, 1, 32, 1,
        40, 9, 82, 3, 107, 101, 121, 18, 20, 10, 5, 118, 97, 108, 117, 101, 24, 2, 32, 1, 40, 9,
        82, 5, 118, 97, 108, 117, 101, 58, 8, 8, 0, 16, 0, 24, 0, 56, 1>>
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
          json_name: "type",
          label: :LABEL_OPTIONAL,
          name: "type",
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
          type: :TYPE_STRING,
          type_name: nil
        },
        %Google.Protobuf.FieldDescriptorProto{
          default_value: nil,
          extendee: nil,
          json_name: "params",
          label: :LABEL_REPEATED,
          name: "parameters",
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
          type: :TYPE_MESSAGE,
          type_name: ".config.VersioningConfiguration.ParametersEntry"
        },
        %Google.Protobuf.FieldDescriptorProto{
          default_value: nil,
          extendee: nil,
          json_name: "cleanupIntervalS",
          label: :LABEL_OPTIONAL,
          name: "cleanup_interval_s",
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
          type: :TYPE_INT32,
          type_name: nil
        },
        %Google.Protobuf.FieldDescriptorProto{
          default_value: nil,
          extendee: nil,
          json_name: "fsPath",
          label: :LABEL_OPTIONAL,
          name: "fs_path",
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
        },
        %Google.Protobuf.FieldDescriptorProto{
          default_value: nil,
          extendee: nil,
          json_name: "fsType",
          label: :LABEL_OPTIONAL,
          name: "fs_type",
          number: 5,
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
          type: :TYPE_ENUM,
          type_name: ".fs.FilesystemType"
        }
      ],
      name: "VersioningConfiguration",
      nested_type: [
        %Google.Protobuf.DescriptorProto{
          enum_type: [],
          extension: [],
          extension_range: [],
          field: [
            %Google.Protobuf.FieldDescriptorProto{
              default_value: nil,
              extendee: nil,
              json_name: "key",
              label: :LABEL_OPTIONAL,
              name: "key",
              number: 1,
              oneof_index: nil,
              options: nil,
              proto3_optional: nil,
              type: :TYPE_STRING,
              type_name: nil
            },
            %Google.Protobuf.FieldDescriptorProto{
              default_value: nil,
              extendee: nil,
              json_name: "value",
              label: :LABEL_OPTIONAL,
              name: "value",
              number: 2,
              oneof_index: nil,
              options: nil,
              proto3_optional: nil,
              type: :TYPE_STRING,
              type_name: nil
            }
          ],
          name: "ParametersEntry",
          nested_type: [],
          oneof_decl: [],
          options: %Google.Protobuf.MessageOptions{
            __pb_extensions__: %{},
            deprecated: false,
            map_entry: true,
            message_set_wire_format: false,
            no_standard_descriptor_accessor: false,
            uninterpreted_option: []
          },
          reserved_name: [],
          reserved_range: []
        }
      ],
      oneof_decl: [],
      options: nil,
      reserved_name: [],
      reserved_range: []
    }
  end

  field :type, 1, type: :string

  field :parameters, 2,
    repeated: true,
    type: Syncthex.Proto.Config.VersioningConfiguration.ParametersEntry,
    json_name: "params",
    map: true

  field :cleanup_interval_s, 3, type: :int32, json_name: "cleanupIntervalS"
  field :fs_path, 4, type: :string, json_name: "fsPath"
  field :fs_type, 5, type: Syncthex.Proto.Fs.FilesystemType, enum: true, json_name: "fsType"
end
