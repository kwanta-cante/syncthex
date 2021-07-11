defmodule Syncthex.Proto.Config.LDAPConfiguration do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          address: String.t(),
          bind_dn: String.t(),
          transport: Syncthex.Proto.Config.LDAPTransport.t(),
          insecure_skip_verify: boolean,
          search_base_dn: String.t(),
          search_filter: String.t()
        }

  defstruct [
    :address,
    :bind_dn,
    :transport,
    :insecure_skip_verify,
    :search_base_dn,
    :search_filter
  ]

  def descriptor do
    # credo:disable-for-next-line
    Elixir.Google.Protobuf.DescriptorProto.decode(
      <<10, 17, 76, 68, 65, 80, 67, 111, 110, 102, 105, 103, 117, 114, 97, 116, 105, 111, 110, 18,
        32, 10, 7, 97, 100, 100, 114, 101, 115, 115, 24, 1, 32, 1, 40, 9, 66, 6, 24, 0, 40, 0, 80,
        0, 82, 7, 97, 100, 100, 114, 101, 115, 115, 18, 31, 10, 7, 98, 105, 110, 100, 95, 100,
        110, 24, 2, 32, 1, 40, 9, 66, 6, 24, 0, 40, 0, 80, 0, 82, 6, 98, 105, 110, 100, 68, 78,
        18, 59, 10, 9, 116, 114, 97, 110, 115, 112, 111, 114, 116, 24, 3, 32, 1, 40, 14, 50, 21,
        46, 99, 111, 110, 102, 105, 103, 46, 76, 68, 65, 80, 84, 114, 97, 110, 115, 112, 111, 114,
        116, 66, 6, 24, 0, 40, 0, 80, 0, 82, 9, 116, 114, 97, 110, 115, 112, 111, 114, 116, 18,
        56, 10, 20, 105, 110, 115, 101, 99, 117, 114, 101, 95, 115, 107, 105, 112, 95, 118, 101,
        114, 105, 102, 121, 24, 4, 32, 1, 40, 8, 66, 6, 24, 0, 40, 0, 80, 0, 82, 18, 105, 110,
        115, 101, 99, 117, 114, 101, 83, 107, 105, 112, 86, 101, 114, 105, 102, 121, 18, 44, 10,
        14, 115, 101, 97, 114, 99, 104, 95, 98, 97, 115, 101, 95, 100, 110, 24, 5, 32, 1, 40, 9,
        66, 6, 24, 0, 40, 0, 80, 0, 82, 12, 115, 101, 97, 114, 99, 104, 66, 97, 115, 101, 68, 78,
        18, 43, 10, 13, 115, 101, 97, 114, 99, 104, 95, 102, 105, 108, 116, 101, 114, 24, 6, 32,
        1, 40, 9, 66, 6, 24, 0, 40, 0, 80, 0, 82, 12, 115, 101, 97, 114, 99, 104, 70, 105, 108,
        116, 101, 114>>
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
          json_name: "address",
          label: :LABEL_OPTIONAL,
          name: "address",
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
          json_name: "bindDN",
          label: :LABEL_OPTIONAL,
          name: "bind_dn",
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
          json_name: "transport",
          label: :LABEL_OPTIONAL,
          name: "transport",
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
          type: :TYPE_ENUM,
          type_name: ".config.LDAPTransport"
        },
        %Google.Protobuf.FieldDescriptorProto{
          default_value: nil,
          extendee: nil,
          json_name: "insecureSkipVerify",
          label: :LABEL_OPTIONAL,
          name: "insecure_skip_verify",
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
          type: :TYPE_BOOL,
          type_name: nil
        },
        %Google.Protobuf.FieldDescriptorProto{
          default_value: nil,
          extendee: nil,
          json_name: "searchBaseDN",
          label: :LABEL_OPTIONAL,
          name: "search_base_dn",
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
          type: :TYPE_STRING,
          type_name: nil
        },
        %Google.Protobuf.FieldDescriptorProto{
          default_value: nil,
          extendee: nil,
          json_name: "searchFilter",
          label: :LABEL_OPTIONAL,
          name: "search_filter",
          number: 6,
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
      name: "LDAPConfiguration",
      nested_type: [],
      oneof_decl: [],
      options: nil,
      reserved_name: [],
      reserved_range: []
    }
  end

  field :address, 1, type: :string
  field :bind_dn, 2, type: :string, json_name: "bindDN"
  field :transport, 3, type: Syncthex.Proto.Config.LDAPTransport, enum: true
  field :insecure_skip_verify, 4, type: :bool, json_name: "insecureSkipVerify"
  field :search_base_dn, 5, type: :string, json_name: "searchBaseDN"
  field :search_filter, 6, type: :string, json_name: "searchFilter"
end
