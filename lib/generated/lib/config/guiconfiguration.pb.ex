defmodule Syncthex.Proto.Config.GUIConfiguration do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          enabled: boolean,
          address: String.t(),
          unix_socket_permissions: String.t(),
          user: String.t(),
          password: String.t(),
          auth_mode: Syncthex.Proto.Config.AuthMode.t(),
          use_tls: boolean,
          api_key: String.t(),
          insecure_admin_access: boolean,
          theme: String.t(),
          debugging: boolean,
          insecure_skip_host_check: boolean,
          insecure_allow_frame_loading: boolean
        }

  defstruct [
    :enabled,
    :address,
    :unix_socket_permissions,
    :user,
    :password,
    :auth_mode,
    :use_tls,
    :api_key,
    :insecure_admin_access,
    :theme,
    :debugging,
    :insecure_skip_host_check,
    :insecure_allow_frame_loading
  ]

  def descriptor do
    # credo:disable-for-next-line
    Elixir.Google.Protobuf.DescriptorProto.decode(
      <<10, 16, 71, 85, 73, 67, 111, 110, 102, 105, 103, 117, 114, 97, 116, 105, 111, 110, 18, 32,
        10, 7, 101, 110, 97, 98, 108, 101, 100, 24, 1, 32, 1, 40, 8, 66, 6, 24, 0, 40, 0, 80, 0,
        82, 7, 101, 110, 97, 98, 108, 101, 100, 18, 32, 10, 7, 97, 100, 100, 114, 101, 115, 115,
        24, 2, 32, 1, 40, 9, 66, 6, 24, 0, 40, 0, 80, 0, 82, 7, 97, 100, 100, 114, 101, 115, 115,
        18, 62, 10, 23, 117, 110, 105, 120, 95, 115, 111, 99, 107, 101, 116, 95, 112, 101, 114,
        109, 105, 115, 115, 105, 111, 110, 115, 24, 3, 32, 1, 40, 9, 66, 6, 24, 0, 40, 0, 80, 0,
        82, 21, 117, 110, 105, 120, 83, 111, 99, 107, 101, 116, 80, 101, 114, 109, 105, 115, 115,
        105, 111, 110, 115, 18, 26, 10, 4, 117, 115, 101, 114, 24, 4, 32, 1, 40, 9, 66, 6, 24, 0,
        40, 0, 80, 0, 82, 4, 117, 115, 101, 114, 18, 34, 10, 8, 112, 97, 115, 115, 119, 111, 114,
        100, 24, 5, 32, 1, 40, 9, 66, 6, 24, 0, 40, 0, 80, 0, 82, 8, 112, 97, 115, 115, 119, 111,
        114, 100, 18, 53, 10, 9, 97, 117, 116, 104, 95, 109, 111, 100, 101, 24, 6, 32, 1, 40, 14,
        50, 16, 46, 99, 111, 110, 102, 105, 103, 46, 65, 117, 116, 104, 77, 111, 100, 101, 66, 6,
        24, 0, 40, 0, 80, 0, 82, 8, 97, 117, 116, 104, 77, 111, 100, 101, 18, 31, 10, 7, 117, 115,
        101, 95, 116, 108, 115, 24, 7, 32, 1, 40, 8, 66, 6, 24, 0, 40, 0, 80, 0, 82, 6, 117, 115,
        101, 84, 76, 83, 18, 31, 10, 7, 97, 112, 105, 95, 107, 101, 121, 24, 8, 32, 1, 40, 9, 66,
        6, 24, 0, 40, 0, 80, 0, 82, 6, 97, 112, 105, 75, 101, 121, 18, 58, 10, 21, 105, 110, 115,
        101, 99, 117, 114, 101, 95, 97, 100, 109, 105, 110, 95, 97, 99, 99, 101, 115, 115, 24, 9,
        32, 1, 40, 8, 66, 6, 24, 0, 40, 0, 80, 0, 82, 19, 105, 110, 115, 101, 99, 117, 114, 101,
        65, 100, 109, 105, 110, 65, 99, 99, 101, 115, 115, 18, 28, 10, 5, 116, 104, 101, 109, 101,
        24, 10, 32, 1, 40, 9, 66, 6, 24, 0, 40, 0, 80, 0, 82, 5, 116, 104, 101, 109, 101, 18, 36,
        10, 9, 100, 101, 98, 117, 103, 103, 105, 110, 103, 24, 11, 32, 1, 40, 8, 66, 6, 24, 0, 40,
        0, 80, 0, 82, 9, 100, 101, 98, 117, 103, 103, 105, 110, 103, 18, 63, 10, 24, 105, 110,
        115, 101, 99, 117, 114, 101, 95, 115, 107, 105, 112, 95, 104, 111, 115, 116, 95, 99, 104,
        101, 99, 107, 24, 12, 32, 1, 40, 8, 66, 6, 24, 0, 40, 0, 80, 0, 82, 21, 105, 110, 115,
        101, 99, 117, 114, 101, 83, 107, 105, 112, 72, 111, 115, 116, 99, 104, 101, 99, 107, 18,
        71, 10, 28, 105, 110, 115, 101, 99, 117, 114, 101, 95, 97, 108, 108, 111, 119, 95, 102,
        114, 97, 109, 101, 95, 108, 111, 97, 100, 105, 110, 103, 24, 13, 32, 1, 40, 8, 66, 6, 24,
        0, 40, 0, 80, 0, 82, 25, 105, 110, 115, 101, 99, 117, 114, 101, 65, 108, 108, 111, 119,
        70, 114, 97, 109, 101, 76, 111, 97, 100, 105, 110, 103>>
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
          json_name: "enabled",
          label: :LABEL_OPTIONAL,
          name: "enabled",
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
          type: :TYPE_BOOL,
          type_name: nil
        },
        %Google.Protobuf.FieldDescriptorProto{
          default_value: nil,
          extendee: nil,
          json_name: "address",
          label: :LABEL_OPTIONAL,
          name: "address",
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
          json_name: "unixSocketPermissions",
          label: :LABEL_OPTIONAL,
          name: "unix_socket_permissions",
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
          json_name: "user",
          label: :LABEL_OPTIONAL,
          name: "user",
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
          json_name: "password",
          label: :LABEL_OPTIONAL,
          name: "password",
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
          json_name: "authMode",
          label: :LABEL_OPTIONAL,
          name: "auth_mode",
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
          type: :TYPE_ENUM,
          type_name: ".config.AuthMode"
        },
        %Google.Protobuf.FieldDescriptorProto{
          default_value: nil,
          extendee: nil,
          json_name: "useTLS",
          label: :LABEL_OPTIONAL,
          name: "use_tls",
          number: 7,
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
          json_name: "apiKey",
          label: :LABEL_OPTIONAL,
          name: "api_key",
          number: 8,
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
          json_name: "insecureAdminAccess",
          label: :LABEL_OPTIONAL,
          name: "insecure_admin_access",
          number: 9,
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
          json_name: "theme",
          label: :LABEL_OPTIONAL,
          name: "theme",
          number: 10,
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
          json_name: "debugging",
          label: :LABEL_OPTIONAL,
          name: "debugging",
          number: 11,
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
          json_name: "insecureSkipHostcheck",
          label: :LABEL_OPTIONAL,
          name: "insecure_skip_host_check",
          number: 12,
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
          json_name: "insecureAllowFrameLoading",
          label: :LABEL_OPTIONAL,
          name: "insecure_allow_frame_loading",
          number: 13,
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
        }
      ],
      name: "GUIConfiguration",
      nested_type: [],
      oneof_decl: [],
      options: nil,
      reserved_name: [],
      reserved_range: []
    }
  end

  field :enabled, 1, type: :bool
  field :address, 2, type: :string
  field :unix_socket_permissions, 3, type: :string, json_name: "unixSocketPermissions"
  field :user, 4, type: :string
  field :password, 5, type: :string
  field :auth_mode, 6, type: Syncthex.Proto.Config.AuthMode, enum: true, json_name: "authMode"
  field :use_tls, 7, type: :bool, json_name: "useTLS"
  field :api_key, 8, type: :string, json_name: "apiKey"
  field :insecure_admin_access, 9, type: :bool, json_name: "insecureAdminAccess"
  field :theme, 10, type: :string
  field :debugging, 11, type: :bool
  field :insecure_skip_host_check, 12, type: :bool, json_name: "insecureSkipHostcheck"
  field :insecure_allow_frame_loading, 13, type: :bool, json_name: "insecureAllowFrameLoading"
end
