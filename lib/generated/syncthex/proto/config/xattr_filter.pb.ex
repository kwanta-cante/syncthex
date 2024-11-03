defmodule Syncthex.Proto.Config.XattrFilter do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "XattrFilter",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "entries",
          extendee: nil,
          number: 1,
          label: :LABEL_REPEATED,
          type: :TYPE_MESSAGE,
          type_name: ".config.XattrFilterEntry",
          default_value: nil,
          options: %Google.Protobuf.FieldOptions{
            ctype: :STRING,
            packed: nil,
            deprecated: false,
            lazy: false,
            jstype: :JS_NORMAL,
            weak: false,
            unverified_lazy: false,
            debug_redact: false,
            uninterpreted_option: [],
            __pb_extensions__: %{},
            __unknown_fields__: [{75005, 2, "entry"}]
          },
          oneof_index: nil,
          json_name: "entries",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "max_single_entry_size",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_INT32,
          type_name: nil,
          default_value: nil,
          options: %Google.Protobuf.FieldOptions{
            ctype: :STRING,
            packed: nil,
            deprecated: false,
            lazy: false,
            jstype: :JS_NORMAL,
            weak: false,
            unverified_lazy: false,
            debug_redact: false,
            uninterpreted_option: [],
            __pb_extensions__: %{},
            __unknown_fields__: [{75005, 2, "maxSingleEntrySize"}, {75007, 2, "1024"}]
          },
          oneof_index: nil,
          json_name: "maxSingleEntrySize",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "max_total_size",
          extendee: nil,
          number: 3,
          label: :LABEL_OPTIONAL,
          type: :TYPE_INT32,
          type_name: nil,
          default_value: nil,
          options: %Google.Protobuf.FieldOptions{
            ctype: :STRING,
            packed: nil,
            deprecated: false,
            lazy: false,
            jstype: :JS_NORMAL,
            weak: false,
            unverified_lazy: false,
            debug_redact: false,
            uninterpreted_option: [],
            __pb_extensions__: %{},
            __unknown_fields__: [{75005, 2, "maxTotalSize"}, {75007, 2, "4096"}]
          },
          oneof_index: nil,
          json_name: "maxTotalSize",
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

  field :entries, 1,
    repeated: true,
    type: Syncthex.Proto.Config.XattrFilterEntry,
    deprecated: false

  field :max_single_entry_size, 2,
    type: :int32,
    json_name: "maxSingleEntrySize",
    deprecated: false

  field :max_total_size, 3, type: :int32, json_name: "maxTotalSize", deprecated: false
end