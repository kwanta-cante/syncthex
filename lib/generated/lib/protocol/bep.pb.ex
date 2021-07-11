defmodule Syncthex.Proto.Protocol.MessageType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :MESSAGE_TYPE_CLUSTER_CONFIG
          | :MESSAGE_TYPE_INDEX
          | :MESSAGE_TYPE_INDEX_UPDATE
          | :MESSAGE_TYPE_REQUEST
          | :MESSAGE_TYPE_RESPONSE
          | :MESSAGE_TYPE_DOWNLOAD_PROGRESS
          | :MESSAGE_TYPE_PING
          | :MESSAGE_TYPE_CLOSE

  def descriptor do
    # credo:disable-for-next-line
    Elixir.Google.Protobuf.EnumDescriptorProto.decode(
      <<10, 11, 77, 101, 115, 115, 97, 103, 101, 84, 121, 112, 101, 18, 31, 10, 27, 77, 69, 83,
        83, 65, 71, 69, 95, 84, 89, 80, 69, 95, 67, 76, 85, 83, 84, 69, 82, 95, 67, 79, 78, 70,
        73, 71, 16, 0, 18, 22, 10, 18, 77, 69, 83, 83, 65, 71, 69, 95, 84, 89, 80, 69, 95, 73, 78,
        68, 69, 88, 16, 1, 18, 29, 10, 25, 77, 69, 83, 83, 65, 71, 69, 95, 84, 89, 80, 69, 95, 73,
        78, 68, 69, 88, 95, 85, 80, 68, 65, 84, 69, 16, 2, 18, 24, 10, 20, 77, 69, 83, 83, 65, 71,
        69, 95, 84, 89, 80, 69, 95, 82, 69, 81, 85, 69, 83, 84, 16, 3, 18, 25, 10, 21, 77, 69, 83,
        83, 65, 71, 69, 95, 84, 89, 80, 69, 95, 82, 69, 83, 80, 79, 78, 83, 69, 16, 4, 18, 34, 10,
        30, 77, 69, 83, 83, 65, 71, 69, 95, 84, 89, 80, 69, 95, 68, 79, 87, 78, 76, 79, 65, 68,
        95, 80, 82, 79, 71, 82, 69, 83, 83, 16, 5, 18, 21, 10, 17, 77, 69, 83, 83, 65, 71, 69, 95,
        84, 89, 80, 69, 95, 80, 73, 78, 71, 16, 6, 18, 22, 10, 18, 77, 69, 83, 83, 65, 71, 69, 95,
        84, 89, 80, 69, 95, 67, 76, 79, 83, 69, 16, 7>>
    )
  end

  def descriptor_plain do
    %Google.Protobuf.EnumDescriptorProto{
      name: "MessageType",
      options: nil,
      reserved_name: [],
      reserved_range: [],
      value: [
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "MESSAGE_TYPE_CLUSTER_CONFIG",
          number: 0,
          options: nil
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "MESSAGE_TYPE_INDEX",
          number: 1,
          options: nil
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "MESSAGE_TYPE_INDEX_UPDATE",
          number: 2,
          options: nil
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "MESSAGE_TYPE_REQUEST",
          number: 3,
          options: nil
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "MESSAGE_TYPE_RESPONSE",
          number: 4,
          options: nil
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "MESSAGE_TYPE_DOWNLOAD_PROGRESS",
          number: 5,
          options: nil
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "MESSAGE_TYPE_PING",
          number: 6,
          options: nil
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "MESSAGE_TYPE_CLOSE",
          number: 7,
          options: nil
        }
      ]
    }
  end

  field :MESSAGE_TYPE_CLUSTER_CONFIG, 0
  field :MESSAGE_TYPE_INDEX, 1
  field :MESSAGE_TYPE_INDEX_UPDATE, 2
  field :MESSAGE_TYPE_REQUEST, 3
  field :MESSAGE_TYPE_RESPONSE, 4
  field :MESSAGE_TYPE_DOWNLOAD_PROGRESS, 5
  field :MESSAGE_TYPE_PING, 6
  field :MESSAGE_TYPE_CLOSE, 7
end

defmodule Syncthex.Proto.Protocol.MessageCompression do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :MESSAGE_COMPRESSION_NONE | :MESSAGE_COMPRESSION_LZ4

  def descriptor do
    # credo:disable-for-next-line
    Elixir.Google.Protobuf.EnumDescriptorProto.decode(
      <<10, 18, 77, 101, 115, 115, 97, 103, 101, 67, 111, 109, 112, 114, 101, 115, 115, 105, 111,
        110, 18, 28, 10, 24, 77, 69, 83, 83, 65, 71, 69, 95, 67, 79, 77, 80, 82, 69, 83, 83, 73,
        79, 78, 95, 78, 79, 78, 69, 16, 0, 18, 31, 10, 23, 77, 69, 83, 83, 65, 71, 69, 95, 67, 79,
        77, 80, 82, 69, 83, 83, 73, 79, 78, 95, 76, 90, 52, 16, 1, 26, 2, 8, 0>>
    )
  end

  def descriptor_plain do
    %Google.Protobuf.EnumDescriptorProto{
      name: "MessageCompression",
      options: nil,
      reserved_name: [],
      reserved_range: [],
      value: [
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "MESSAGE_COMPRESSION_NONE",
          number: 0,
          options: nil
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "MESSAGE_COMPRESSION_LZ4",
          number: 1,
          options: %Google.Protobuf.EnumValueOptions{
            __pb_extensions__: %{},
            deprecated: false,
            uninterpreted_option: []
          }
        }
      ]
    }
  end

  field :MESSAGE_COMPRESSION_NONE, 0
  field :MESSAGE_COMPRESSION_LZ4, 1
end

defmodule Syncthex.Proto.Protocol.Compression do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :COMPRESSION_METADATA | :COMPRESSION_NEVER | :COMPRESSION_ALWAYS

  def descriptor do
    # credo:disable-for-next-line
    Elixir.Google.Protobuf.EnumDescriptorProto.decode(
      <<10, 11, 67, 111, 109, 112, 114, 101, 115, 115, 105, 111, 110, 18, 24, 10, 20, 67, 79, 77,
        80, 82, 69, 83, 83, 73, 79, 78, 95, 77, 69, 84, 65, 68, 65, 84, 65, 16, 0, 18, 21, 10, 17,
        67, 79, 77, 80, 82, 69, 83, 83, 73, 79, 78, 95, 78, 69, 86, 69, 82, 16, 1, 18, 22, 10, 18,
        67, 79, 77, 80, 82, 69, 83, 83, 73, 79, 78, 95, 65, 76, 87, 65, 89, 83, 16, 2>>
    )
  end

  def descriptor_plain do
    %Google.Protobuf.EnumDescriptorProto{
      name: "Compression",
      options: nil,
      reserved_name: [],
      reserved_range: [],
      value: [
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "COMPRESSION_METADATA",
          number: 0,
          options: nil
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "COMPRESSION_NEVER",
          number: 1,
          options: nil
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "COMPRESSION_ALWAYS",
          number: 2,
          options: nil
        }
      ]
    }
  end

  field :COMPRESSION_METADATA, 0
  field :COMPRESSION_NEVER, 1
  field :COMPRESSION_ALWAYS, 2
end

defmodule Syncthex.Proto.Protocol.FileInfoType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :FILE_INFO_TYPE_FILE
          | :FILE_INFO_TYPE_DIRECTORY
          | :FILE_INFO_TYPE_SYMLINK_FILE
          | :FILE_INFO_TYPE_SYMLINK_DIRECTORY
          | :FILE_INFO_TYPE_SYMLINK

  def descriptor do
    # credo:disable-for-next-line
    Elixir.Google.Protobuf.EnumDescriptorProto.decode(
      <<10, 12, 70, 105, 108, 101, 73, 110, 102, 111, 84, 121, 112, 101, 18, 23, 10, 19, 70, 73,
        76, 69, 95, 73, 78, 70, 79, 95, 84, 89, 80, 69, 95, 70, 73, 76, 69, 16, 0, 18, 28, 10, 24,
        70, 73, 76, 69, 95, 73, 78, 70, 79, 95, 84, 89, 80, 69, 95, 68, 73, 82, 69, 67, 84, 79,
        82, 89, 16, 1, 18, 35, 10, 27, 70, 73, 76, 69, 95, 73, 78, 70, 79, 95, 84, 89, 80, 69, 95,
        83, 89, 77, 76, 73, 78, 75, 95, 70, 73, 76, 69, 16, 2, 26, 2, 8, 1, 18, 40, 10, 32, 70,
        73, 76, 69, 95, 73, 78, 70, 79, 95, 84, 89, 80, 69, 95, 83, 89, 77, 76, 73, 78, 75, 95,
        68, 73, 82, 69, 67, 84, 79, 82, 89, 16, 3, 26, 2, 8, 1, 18, 26, 10, 22, 70, 73, 76, 69,
        95, 73, 78, 70, 79, 95, 84, 89, 80, 69, 95, 83, 89, 77, 76, 73, 78, 75, 16, 4>>
    )
  end

  def descriptor_plain do
    %Google.Protobuf.EnumDescriptorProto{
      name: "FileInfoType",
      options: nil,
      reserved_name: [],
      reserved_range: [],
      value: [
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "FILE_INFO_TYPE_FILE",
          number: 0,
          options: nil
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "FILE_INFO_TYPE_DIRECTORY",
          number: 1,
          options: nil
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "FILE_INFO_TYPE_SYMLINK_FILE",
          number: 2,
          options: %Google.Protobuf.EnumValueOptions{
            __pb_extensions__: %{},
            deprecated: true,
            uninterpreted_option: []
          }
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "FILE_INFO_TYPE_SYMLINK_DIRECTORY",
          number: 3,
          options: %Google.Protobuf.EnumValueOptions{
            __pb_extensions__: %{},
            deprecated: true,
            uninterpreted_option: []
          }
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "FILE_INFO_TYPE_SYMLINK",
          number: 4,
          options: nil
        }
      ]
    }
  end

  field :FILE_INFO_TYPE_FILE, 0
  field :FILE_INFO_TYPE_DIRECTORY, 1
  field :FILE_INFO_TYPE_SYMLINK_FILE, 2
  field :FILE_INFO_TYPE_SYMLINK_DIRECTORY, 3
  field :FILE_INFO_TYPE_SYMLINK, 4
end

defmodule Syncthex.Proto.Protocol.ErrorCode do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :ERROR_CODE_NO_ERROR
          | :ERROR_CODE_GENERIC
          | :ERROR_CODE_NO_SUCH_FILE
          | :ERROR_CODE_INVALID_FILE

  def descriptor do
    # credo:disable-for-next-line
    Elixir.Google.Protobuf.EnumDescriptorProto.decode(
      <<10, 9, 69, 114, 114, 111, 114, 67, 111, 100, 101, 18, 23, 10, 19, 69, 82, 82, 79, 82, 95,
        67, 79, 68, 69, 95, 78, 79, 95, 69, 82, 82, 79, 82, 16, 0, 18, 22, 10, 18, 69, 82, 82, 79,
        82, 95, 67, 79, 68, 69, 95, 71, 69, 78, 69, 82, 73, 67, 16, 1, 18, 27, 10, 23, 69, 82, 82,
        79, 82, 95, 67, 79, 68, 69, 95, 78, 79, 95, 83, 85, 67, 72, 95, 70, 73, 76, 69, 16, 2, 18,
        27, 10, 23, 69, 82, 82, 79, 82, 95, 67, 79, 68, 69, 95, 73, 78, 86, 65, 76, 73, 68, 95,
        70, 73, 76, 69, 16, 3>>
    )
  end

  def descriptor_plain do
    %Google.Protobuf.EnumDescriptorProto{
      name: "ErrorCode",
      options: nil,
      reserved_name: [],
      reserved_range: [],
      value: [
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "ERROR_CODE_NO_ERROR",
          number: 0,
          options: nil
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "ERROR_CODE_GENERIC",
          number: 1,
          options: nil
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "ERROR_CODE_NO_SUCH_FILE",
          number: 2,
          options: nil
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "ERROR_CODE_INVALID_FILE",
          number: 3,
          options: nil
        }
      ]
    }
  end

  field :ERROR_CODE_NO_ERROR, 0
  field :ERROR_CODE_GENERIC, 1
  field :ERROR_CODE_NO_SUCH_FILE, 2
  field :ERROR_CODE_INVALID_FILE, 3
end

defmodule Syncthex.Proto.Protocol.FileDownloadProgressUpdateType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :FILE_DOWNLOAD_PROGRESS_UPDATE_TYPE_APPEND
          | :FILE_DOWNLOAD_PROGRESS_UPDATE_TYPE_FORGET

  def descriptor do
    # credo:disable-for-next-line
    Elixir.Google.Protobuf.EnumDescriptorProto.decode(
      <<10, 30, 70, 105, 108, 101, 68, 111, 119, 110, 108, 111, 97, 100, 80, 114, 111, 103, 114,
        101, 115, 115, 85, 112, 100, 97, 116, 101, 84, 121, 112, 101, 18, 45, 10, 41, 70, 73, 76,
        69, 95, 68, 79, 87, 78, 76, 79, 65, 68, 95, 80, 82, 79, 71, 82, 69, 83, 83, 95, 85, 80,
        68, 65, 84, 69, 95, 84, 89, 80, 69, 95, 65, 80, 80, 69, 78, 68, 16, 0, 18, 45, 10, 41, 70,
        73, 76, 69, 95, 68, 79, 87, 78, 76, 79, 65, 68, 95, 80, 82, 79, 71, 82, 69, 83, 83, 95,
        85, 80, 68, 65, 84, 69, 95, 84, 89, 80, 69, 95, 70, 79, 82, 71, 69, 84, 16, 1>>
    )
  end

  def descriptor_plain do
    %Google.Protobuf.EnumDescriptorProto{
      name: "FileDownloadProgressUpdateType",
      options: nil,
      reserved_name: [],
      reserved_range: [],
      value: [
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "FILE_DOWNLOAD_PROGRESS_UPDATE_TYPE_APPEND",
          number: 0,
          options: nil
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "FILE_DOWNLOAD_PROGRESS_UPDATE_TYPE_FORGET",
          number: 1,
          options: nil
        }
      ]
    }
  end

  field :FILE_DOWNLOAD_PROGRESS_UPDATE_TYPE_APPEND, 0
  field :FILE_DOWNLOAD_PROGRESS_UPDATE_TYPE_FORGET, 1
end

defmodule Syncthex.Proto.Protocol.Hello do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          device_name: String.t(),
          client_name: String.t(),
          client_version: String.t()
        }

  defstruct [:device_name, :client_name, :client_version]

  def descriptor do
    # credo:disable-for-next-line
    Elixir.Google.Protobuf.DescriptorProto.decode(
      <<10, 5, 72, 101, 108, 108, 111, 18, 31, 10, 11, 100, 101, 118, 105, 99, 101, 95, 110, 97,
        109, 101, 24, 1, 32, 1, 40, 9, 82, 10, 100, 101, 118, 105, 99, 101, 78, 97, 109, 101, 18,
        31, 10, 11, 99, 108, 105, 101, 110, 116, 95, 110, 97, 109, 101, 24, 2, 32, 1, 40, 9, 82,
        10, 99, 108, 105, 101, 110, 116, 78, 97, 109, 101, 18, 37, 10, 14, 99, 108, 105, 101, 110,
        116, 95, 118, 101, 114, 115, 105, 111, 110, 24, 3, 32, 1, 40, 9, 82, 13, 99, 108, 105,
        101, 110, 116, 86, 101, 114, 115, 105, 111, 110>>
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
          json_name: "deviceName",
          label: :LABEL_OPTIONAL,
          name: "device_name",
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
          json_name: "clientName",
          label: :LABEL_OPTIONAL,
          name: "client_name",
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
          json_name: "clientVersion",
          label: :LABEL_OPTIONAL,
          name: "client_version",
          number: 3,
          oneof_index: nil,
          options: nil,
          proto3_optional: nil,
          type: :TYPE_STRING,
          type_name: nil
        }
      ],
      name: "Hello",
      nested_type: [],
      oneof_decl: [],
      options: nil,
      reserved_name: [],
      reserved_range: []
    }
  end

  field :device_name, 1, type: :string, json_name: "deviceName"
  field :client_name, 2, type: :string, json_name: "clientName"
  field :client_version, 3, type: :string, json_name: "clientVersion"
end

defmodule Syncthex.Proto.Protocol.Header do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type: Syncthex.Proto.Protocol.MessageType.t(),
          compression: Syncthex.Proto.Protocol.MessageCompression.t()
        }

  defstruct [:type, :compression]

  def descriptor do
    # credo:disable-for-next-line
    Elixir.Google.Protobuf.DescriptorProto.decode(
      <<10, 6, 72, 101, 97, 100, 101, 114, 18, 41, 10, 4, 116, 121, 112, 101, 24, 1, 32, 1, 40,
        14, 50, 21, 46, 112, 114, 111, 116, 111, 99, 111, 108, 46, 77, 101, 115, 115, 97, 103,
        101, 84, 121, 112, 101, 82, 4, 116, 121, 112, 101, 18, 62, 10, 11, 99, 111, 109, 112, 114,
        101, 115, 115, 105, 111, 110, 24, 2, 32, 1, 40, 14, 50, 28, 46, 112, 114, 111, 116, 111,
        99, 111, 108, 46, 77, 101, 115, 115, 97, 103, 101, 67, 111, 109, 112, 114, 101, 115, 115,
        105, 111, 110, 82, 11, 99, 111, 109, 112, 114, 101, 115, 115, 105, 111, 110>>
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
          options: nil,
          proto3_optional: nil,
          type: :TYPE_ENUM,
          type_name: ".protocol.MessageType"
        },
        %Google.Protobuf.FieldDescriptorProto{
          default_value: nil,
          extendee: nil,
          json_name: "compression",
          label: :LABEL_OPTIONAL,
          name: "compression",
          number: 2,
          oneof_index: nil,
          options: nil,
          proto3_optional: nil,
          type: :TYPE_ENUM,
          type_name: ".protocol.MessageCompression"
        }
      ],
      name: "Header",
      nested_type: [],
      oneof_decl: [],
      options: nil,
      reserved_name: [],
      reserved_range: []
    }
  end

  field :type, 1, type: Syncthex.Proto.Protocol.MessageType, enum: true
  field :compression, 2, type: Syncthex.Proto.Protocol.MessageCompression, enum: true
end

defmodule Syncthex.Proto.Protocol.ClusterConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          folders: [Syncthex.Proto.Protocol.Folder.t()]
        }

  defstruct [:folders]

  def descriptor do
    # credo:disable-for-next-line
    Elixir.Google.Protobuf.DescriptorProto.decode(
      <<10, 13, 67, 108, 117, 115, 116, 101, 114, 67, 111, 110, 102, 105, 103, 18, 42, 10, 7, 102,
        111, 108, 100, 101, 114, 115, 24, 1, 32, 3, 40, 11, 50, 16, 46, 112, 114, 111, 116, 111,
        99, 111, 108, 46, 70, 111, 108, 100, 101, 114, 82, 7, 102, 111, 108, 100, 101, 114, 115>>
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
          json_name: "folders",
          label: :LABEL_REPEATED,
          name: "folders",
          number: 1,
          oneof_index: nil,
          options: nil,
          proto3_optional: nil,
          type: :TYPE_MESSAGE,
          type_name: ".protocol.Folder"
        }
      ],
      name: "ClusterConfig",
      nested_type: [],
      oneof_decl: [],
      options: nil,
      reserved_name: [],
      reserved_range: []
    }
  end

  field :folders, 1, repeated: true, type: Syncthex.Proto.Protocol.Folder
end

defmodule Syncthex.Proto.Protocol.Folder do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          id: String.t(),
          label: String.t(),
          read_only: boolean,
          ignore_permissions: boolean,
          ignore_delete: boolean,
          disable_temp_indexes: boolean,
          paused: boolean,
          devices: [Syncthex.Proto.Protocol.Device.t()]
        }

  defstruct [
    :id,
    :label,
    :read_only,
    :ignore_permissions,
    :ignore_delete,
    :disable_temp_indexes,
    :paused,
    :devices
  ]

  def descriptor do
    # credo:disable-for-next-line
    Elixir.Google.Protobuf.DescriptorProto.decode(
      <<10, 6, 70, 111, 108, 100, 101, 114, 18, 22, 10, 2, 105, 100, 24, 1, 32, 1, 40, 9, 66, 6,
        24, 0, 40, 0, 80, 0, 82, 2, 105, 100, 18, 20, 10, 5, 108, 97, 98, 101, 108, 24, 2, 32, 1,
        40, 9, 82, 5, 108, 97, 98, 101, 108, 18, 27, 10, 9, 114, 101, 97, 100, 95, 111, 110, 108,
        121, 24, 3, 32, 1, 40, 8, 82, 8, 114, 101, 97, 100, 79, 110, 108, 121, 18, 45, 10, 18,
        105, 103, 110, 111, 114, 101, 95, 112, 101, 114, 109, 105, 115, 115, 105, 111, 110, 115,
        24, 4, 32, 1, 40, 8, 82, 17, 105, 103, 110, 111, 114, 101, 80, 101, 114, 109, 105, 115,
        115, 105, 111, 110, 115, 18, 35, 10, 13, 105, 103, 110, 111, 114, 101, 95, 100, 101, 108,
        101, 116, 101, 24, 5, 32, 1, 40, 8, 82, 12, 105, 103, 110, 111, 114, 101, 68, 101, 108,
        101, 116, 101, 18, 48, 10, 20, 100, 105, 115, 97, 98, 108, 101, 95, 116, 101, 109, 112,
        95, 105, 110, 100, 101, 120, 101, 115, 24, 6, 32, 1, 40, 8, 82, 18, 100, 105, 115, 97, 98,
        108, 101, 84, 101, 109, 112, 73, 110, 100, 101, 120, 101, 115, 18, 22, 10, 6, 112, 97,
        117, 115, 101, 100, 24, 7, 32, 1, 40, 8, 82, 6, 112, 97, 117, 115, 101, 100, 18, 42, 10,
        7, 100, 101, 118, 105, 99, 101, 115, 24, 16, 32, 3, 40, 11, 50, 16, 46, 112, 114, 111,
        116, 111, 99, 111, 108, 46, 68, 101, 118, 105, 99, 101, 82, 7, 100, 101, 118, 105, 99,
        101, 115>>
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
          type: :TYPE_STRING,
          type_name: nil
        },
        %Google.Protobuf.FieldDescriptorProto{
          default_value: nil,
          extendee: nil,
          json_name: "label",
          label: :LABEL_OPTIONAL,
          name: "label",
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
          json_name: "readOnly",
          label: :LABEL_OPTIONAL,
          name: "read_only",
          number: 3,
          oneof_index: nil,
          options: nil,
          proto3_optional: nil,
          type: :TYPE_BOOL,
          type_name: nil
        },
        %Google.Protobuf.FieldDescriptorProto{
          default_value: nil,
          extendee: nil,
          json_name: "ignorePermissions",
          label: :LABEL_OPTIONAL,
          name: "ignore_permissions",
          number: 4,
          oneof_index: nil,
          options: nil,
          proto3_optional: nil,
          type: :TYPE_BOOL,
          type_name: nil
        },
        %Google.Protobuf.FieldDescriptorProto{
          default_value: nil,
          extendee: nil,
          json_name: "ignoreDelete",
          label: :LABEL_OPTIONAL,
          name: "ignore_delete",
          number: 5,
          oneof_index: nil,
          options: nil,
          proto3_optional: nil,
          type: :TYPE_BOOL,
          type_name: nil
        },
        %Google.Protobuf.FieldDescriptorProto{
          default_value: nil,
          extendee: nil,
          json_name: "disableTempIndexes",
          label: :LABEL_OPTIONAL,
          name: "disable_temp_indexes",
          number: 6,
          oneof_index: nil,
          options: nil,
          proto3_optional: nil,
          type: :TYPE_BOOL,
          type_name: nil
        },
        %Google.Protobuf.FieldDescriptorProto{
          default_value: nil,
          extendee: nil,
          json_name: "paused",
          label: :LABEL_OPTIONAL,
          name: "paused",
          number: 7,
          oneof_index: nil,
          options: nil,
          proto3_optional: nil,
          type: :TYPE_BOOL,
          type_name: nil
        },
        %Google.Protobuf.FieldDescriptorProto{
          default_value: nil,
          extendee: nil,
          json_name: "devices",
          label: :LABEL_REPEATED,
          name: "devices",
          number: 16,
          oneof_index: nil,
          options: nil,
          proto3_optional: nil,
          type: :TYPE_MESSAGE,
          type_name: ".protocol.Device"
        }
      ],
      name: "Folder",
      nested_type: [],
      oneof_decl: [],
      options: nil,
      reserved_name: [],
      reserved_range: []
    }
  end

  field :id, 1, type: :string
  field :label, 2, type: :string
  field :read_only, 3, type: :bool, json_name: "readOnly"
  field :ignore_permissions, 4, type: :bool, json_name: "ignorePermissions"
  field :ignore_delete, 5, type: :bool, json_name: "ignoreDelete"
  field :disable_temp_indexes, 6, type: :bool, json_name: "disableTempIndexes"
  field :paused, 7, type: :bool
  field :devices, 16, repeated: true, type: Syncthex.Proto.Protocol.Device
end

defmodule Syncthex.Proto.Protocol.Device do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          id: binary,
          name: String.t(),
          addresses: String.t(),
          compression: Syncthex.Proto.Protocol.Compression.t(),
          cert_name: String.t(),
          max_sequence: integer,
          introducer: boolean,
          index_id: non_neg_integer,
          skip_introduction_removals: boolean,
          encryption_password_token: binary
        }

  defstruct [
    :id,
    :name,
    :addresses,
    :compression,
    :cert_name,
    :max_sequence,
    :introducer,
    :index_id,
    :skip_introduction_removals,
    :encryption_password_token
  ]

  def descriptor do
    # credo:disable-for-next-line
    Elixir.Google.Protobuf.DescriptorProto.decode(
      <<10, 6, 68, 101, 118, 105, 99, 101, 18, 22, 10, 2, 105, 100, 24, 1, 32, 1, 40, 12, 66, 6,
        24, 0, 40, 0, 80, 0, 82, 2, 105, 100, 18, 18, 10, 4, 110, 97, 109, 101, 24, 2, 32, 1, 40,
        9, 82, 4, 110, 97, 109, 101, 18, 28, 10, 9, 97, 100, 100, 114, 101, 115, 115, 101, 115,
        24, 3, 32, 3, 40, 9, 82, 9, 97, 100, 100, 114, 101, 115, 115, 101, 115, 18, 55, 10, 11,
        99, 111, 109, 112, 114, 101, 115, 115, 105, 111, 110, 24, 4, 32, 1, 40, 14, 50, 21, 46,
        112, 114, 111, 116, 111, 99, 111, 108, 46, 67, 111, 109, 112, 114, 101, 115, 115, 105,
        111, 110, 82, 11, 99, 111, 109, 112, 114, 101, 115, 115, 105, 111, 110, 18, 27, 10, 9, 99,
        101, 114, 116, 95, 110, 97, 109, 101, 24, 5, 32, 1, 40, 9, 82, 8, 99, 101, 114, 116, 78,
        97, 109, 101, 18, 33, 10, 12, 109, 97, 120, 95, 115, 101, 113, 117, 101, 110, 99, 101, 24,
        6, 32, 1, 40, 3, 82, 11, 109, 97, 120, 83, 101, 113, 117, 101, 110, 99, 101, 18, 30, 10,
        10, 105, 110, 116, 114, 111, 100, 117, 99, 101, 114, 24, 7, 32, 1, 40, 8, 82, 10, 105,
        110, 116, 114, 111, 100, 117, 99, 101, 114, 18, 33, 10, 8, 105, 110, 100, 101, 120, 95,
        105, 100, 24, 8, 32, 1, 40, 4, 66, 6, 24, 0, 40, 0, 80, 0, 82, 7, 105, 110, 100, 101, 120,
        73, 100, 18, 60, 10, 26, 115, 107, 105, 112, 95, 105, 110, 116, 114, 111, 100, 117, 99,
        116, 105, 111, 110, 95, 114, 101, 109, 111, 118, 97, 108, 115, 24, 9, 32, 1, 40, 8, 82,
        24, 115, 107, 105, 112, 73, 110, 116, 114, 111, 100, 117, 99, 116, 105, 111, 110, 82, 101,
        109, 111, 118, 97, 108, 115, 18, 58, 10, 25, 101, 110, 99, 114, 121, 112, 116, 105, 111,
        110, 95, 112, 97, 115, 115, 119, 111, 114, 100, 95, 116, 111, 107, 101, 110, 24, 10, 32,
        1, 40, 12, 82, 23, 101, 110, 99, 114, 121, 112, 116, 105, 111, 110, 80, 97, 115, 115, 119,
        111, 114, 100, 84, 111, 107, 101, 110>>
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
          json_name: "name",
          label: :LABEL_OPTIONAL,
          name: "name",
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
          json_name: "addresses",
          label: :LABEL_REPEATED,
          name: "addresses",
          number: 3,
          oneof_index: nil,
          options: nil,
          proto3_optional: nil,
          type: :TYPE_STRING,
          type_name: nil
        },
        %Google.Protobuf.FieldDescriptorProto{
          default_value: nil,
          extendee: nil,
          json_name: "compression",
          label: :LABEL_OPTIONAL,
          name: "compression",
          number: 4,
          oneof_index: nil,
          options: nil,
          proto3_optional: nil,
          type: :TYPE_ENUM,
          type_name: ".protocol.Compression"
        },
        %Google.Protobuf.FieldDescriptorProto{
          default_value: nil,
          extendee: nil,
          json_name: "certName",
          label: :LABEL_OPTIONAL,
          name: "cert_name",
          number: 5,
          oneof_index: nil,
          options: nil,
          proto3_optional: nil,
          type: :TYPE_STRING,
          type_name: nil
        },
        %Google.Protobuf.FieldDescriptorProto{
          default_value: nil,
          extendee: nil,
          json_name: "maxSequence",
          label: :LABEL_OPTIONAL,
          name: "max_sequence",
          number: 6,
          oneof_index: nil,
          options: nil,
          proto3_optional: nil,
          type: :TYPE_INT64,
          type_name: nil
        },
        %Google.Protobuf.FieldDescriptorProto{
          default_value: nil,
          extendee: nil,
          json_name: "introducer",
          label: :LABEL_OPTIONAL,
          name: "introducer",
          number: 7,
          oneof_index: nil,
          options: nil,
          proto3_optional: nil,
          type: :TYPE_BOOL,
          type_name: nil
        },
        %Google.Protobuf.FieldDescriptorProto{
          default_value: nil,
          extendee: nil,
          json_name: "indexId",
          label: :LABEL_OPTIONAL,
          name: "index_id",
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
          type: :TYPE_UINT64,
          type_name: nil
        },
        %Google.Protobuf.FieldDescriptorProto{
          default_value: nil,
          extendee: nil,
          json_name: "skipIntroductionRemovals",
          label: :LABEL_OPTIONAL,
          name: "skip_introduction_removals",
          number: 9,
          oneof_index: nil,
          options: nil,
          proto3_optional: nil,
          type: :TYPE_BOOL,
          type_name: nil
        },
        %Google.Protobuf.FieldDescriptorProto{
          default_value: nil,
          extendee: nil,
          json_name: "encryptionPasswordToken",
          label: :LABEL_OPTIONAL,
          name: "encryption_password_token",
          number: 10,
          oneof_index: nil,
          options: nil,
          proto3_optional: nil,
          type: :TYPE_BYTES,
          type_name: nil
        }
      ],
      name: "Device",
      nested_type: [],
      oneof_decl: [],
      options: nil,
      reserved_name: [],
      reserved_range: []
    }
  end

  field :id, 1, type: :bytes
  field :name, 2, type: :string
  field :addresses, 3, repeated: true, type: :string
  field :compression, 4, type: Syncthex.Proto.Protocol.Compression, enum: true
  field :cert_name, 5, type: :string, json_name: "certName"
  field :max_sequence, 6, type: :int64, json_name: "maxSequence"
  field :introducer, 7, type: :bool
  field :index_id, 8, type: :uint64, json_name: "indexId"
  field :skip_introduction_removals, 9, type: :bool, json_name: "skipIntroductionRemovals"
  field :encryption_password_token, 10, type: :bytes, json_name: "encryptionPasswordToken"
end

defmodule Syncthex.Proto.Protocol.Index do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          folder: String.t(),
          files: [Syncthex.Proto.Protocol.FileInfo.t()]
        }

  defstruct [:folder, :files]

  def descriptor do
    # credo:disable-for-next-line
    Elixir.Google.Protobuf.DescriptorProto.decode(
      <<10, 5, 73, 110, 100, 101, 120, 18, 22, 10, 6, 102, 111, 108, 100, 101, 114, 24, 1, 32, 1,
        40, 9, 82, 6, 102, 111, 108, 100, 101, 114, 18, 40, 10, 5, 102, 105, 108, 101, 115, 24, 2,
        32, 3, 40, 11, 50, 18, 46, 112, 114, 111, 116, 111, 99, 111, 108, 46, 70, 105, 108, 101,
        73, 110, 102, 111, 82, 5, 102, 105, 108, 101, 115>>
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
          json_name: "folder",
          label: :LABEL_OPTIONAL,
          name: "folder",
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
          json_name: "files",
          label: :LABEL_REPEATED,
          name: "files",
          number: 2,
          oneof_index: nil,
          options: nil,
          proto3_optional: nil,
          type: :TYPE_MESSAGE,
          type_name: ".protocol.FileInfo"
        }
      ],
      name: "Index",
      nested_type: [],
      oneof_decl: [],
      options: nil,
      reserved_name: [],
      reserved_range: []
    }
  end

  field :folder, 1, type: :string
  field :files, 2, repeated: true, type: Syncthex.Proto.Protocol.FileInfo
end

defmodule Syncthex.Proto.Protocol.IndexUpdate do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          folder: String.t(),
          files: [Syncthex.Proto.Protocol.FileInfo.t()]
        }

  defstruct [:folder, :files]

  def descriptor do
    # credo:disable-for-next-line
    Elixir.Google.Protobuf.DescriptorProto.decode(
      <<10, 11, 73, 110, 100, 101, 120, 85, 112, 100, 97, 116, 101, 18, 22, 10, 6, 102, 111, 108,
        100, 101, 114, 24, 1, 32, 1, 40, 9, 82, 6, 102, 111, 108, 100, 101, 114, 18, 40, 10, 5,
        102, 105, 108, 101, 115, 24, 2, 32, 3, 40, 11, 50, 18, 46, 112, 114, 111, 116, 111, 99,
        111, 108, 46, 70, 105, 108, 101, 73, 110, 102, 111, 82, 5, 102, 105, 108, 101, 115>>
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
          json_name: "folder",
          label: :LABEL_OPTIONAL,
          name: "folder",
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
          json_name: "files",
          label: :LABEL_REPEATED,
          name: "files",
          number: 2,
          oneof_index: nil,
          options: nil,
          proto3_optional: nil,
          type: :TYPE_MESSAGE,
          type_name: ".protocol.FileInfo"
        }
      ],
      name: "IndexUpdate",
      nested_type: [],
      oneof_decl: [],
      options: nil,
      reserved_name: [],
      reserved_range: []
    }
  end

  field :folder, 1, type: :string
  field :files, 2, repeated: true, type: Syncthex.Proto.Protocol.FileInfo
end

defmodule Syncthex.Proto.Protocol.FileInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          size: integer,
          modified_s: integer,
          modified_by: non_neg_integer,
          version: Syncthex.Proto.Protocol.Vector.t() | nil,
          sequence: integer,
          blocks: [Syncthex.Proto.Protocol.BlockInfo.t()],
          symlink_target: String.t(),
          blocks_hash: binary,
          encrypted: binary,
          type: Syncthex.Proto.Protocol.FileInfoType.t(),
          permissions: non_neg_integer,
          modified_ns: integer,
          block_size: integer,
          local_flags: non_neg_integer,
          version_hash: binary,
          deleted: boolean,
          invalid: boolean,
          no_permissions: boolean
        }

  defstruct [
    :name,
    :size,
    :modified_s,
    :modified_by,
    :version,
    :sequence,
    :blocks,
    :symlink_target,
    :blocks_hash,
    :encrypted,
    :type,
    :permissions,
    :modified_ns,
    :block_size,
    :local_flags,
    :version_hash,
    :deleted,
    :invalid,
    :no_permissions
  ]

  def descriptor do
    # credo:disable-for-next-line
    Elixir.Google.Protobuf.DescriptorProto.decode(
      <<10, 8, 70, 105, 108, 101, 73, 110, 102, 111, 18, 18, 10, 4, 110, 97, 109, 101, 24, 1, 32,
        1, 40, 9, 82, 4, 110, 97, 109, 101, 18, 18, 10, 4, 115, 105, 122, 101, 24, 3, 32, 1, 40,
        3, 82, 4, 115, 105, 122, 101, 18, 29, 10, 10, 109, 111, 100, 105, 102, 105, 101, 100, 95,
        115, 24, 5, 32, 1, 40, 3, 82, 9, 109, 111, 100, 105, 102, 105, 101, 100, 83, 18, 39, 10,
        11, 109, 111, 100, 105, 102, 105, 101, 100, 95, 98, 121, 24, 12, 32, 1, 40, 4, 66, 6, 24,
        0, 40, 0, 80, 0, 82, 10, 109, 111, 100, 105, 102, 105, 101, 100, 66, 121, 18, 42, 10, 7,
        118, 101, 114, 115, 105, 111, 110, 24, 9, 32, 1, 40, 11, 50, 16, 46, 112, 114, 111, 116,
        111, 99, 111, 108, 46, 86, 101, 99, 116, 111, 114, 82, 7, 118, 101, 114, 115, 105, 111,
        110, 18, 26, 10, 8, 115, 101, 113, 117, 101, 110, 99, 101, 24, 10, 32, 1, 40, 3, 82, 8,
        115, 101, 113, 117, 101, 110, 99, 101, 18, 43, 10, 6, 98, 108, 111, 99, 107, 115, 24, 16,
        32, 3, 40, 11, 50, 19, 46, 112, 114, 111, 116, 111, 99, 111, 108, 46, 66, 108, 111, 99,
        107, 73, 110, 102, 111, 82, 6, 98, 108, 111, 99, 107, 115, 18, 37, 10, 14, 115, 121, 109,
        108, 105, 110, 107, 95, 116, 97, 114, 103, 101, 116, 24, 17, 32, 1, 40, 9, 82, 13, 115,
        121, 109, 108, 105, 110, 107, 84, 97, 114, 103, 101, 116, 18, 31, 10, 11, 98, 108, 111,
        99, 107, 115, 95, 104, 97, 115, 104, 24, 18, 32, 1, 40, 12, 82, 10, 98, 108, 111, 99, 107,
        115, 72, 97, 115, 104, 18, 28, 10, 9, 101, 110, 99, 114, 121, 112, 116, 101, 100, 24, 19,
        32, 1, 40, 12, 82, 9, 101, 110, 99, 114, 121, 112, 116, 101, 100, 18, 42, 10, 4, 116, 121,
        112, 101, 24, 2, 32, 1, 40, 14, 50, 22, 46, 112, 114, 111, 116, 111, 99, 111, 108, 46, 70,
        105, 108, 101, 73, 110, 102, 111, 84, 121, 112, 101, 82, 4, 116, 121, 112, 101, 18, 32,
        10, 11, 112, 101, 114, 109, 105, 115, 115, 105, 111, 110, 115, 24, 4, 32, 1, 40, 13, 82,
        11, 112, 101, 114, 109, 105, 115, 115, 105, 111, 110, 115, 18, 31, 10, 11, 109, 111, 100,
        105, 102, 105, 101, 100, 95, 110, 115, 24, 11, 32, 1, 40, 5, 82, 10, 109, 111, 100, 105,
        102, 105, 101, 100, 78, 115, 18, 37, 10, 10, 98, 108, 111, 99, 107, 95, 115, 105, 122,
        101, 24, 13, 32, 1, 40, 5, 66, 6, 24, 0, 40, 0, 80, 0, 82, 9, 98, 108, 111, 99, 107, 83,
        105, 122, 101, 18, 32, 10, 11, 108, 111, 99, 97, 108, 95, 102, 108, 97, 103, 115, 24, 232,
        7, 32, 1, 40, 13, 82, 10, 108, 111, 99, 97, 108, 70, 108, 97, 103, 115, 18, 34, 10, 12,
        118, 101, 114, 115, 105, 111, 110, 95, 104, 97, 115, 104, 24, 233, 7, 32, 1, 40, 12, 82,
        11, 118, 101, 114, 115, 105, 111, 110, 72, 97, 115, 104, 18, 24, 10, 7, 100, 101, 108,
        101, 116, 101, 100, 24, 6, 32, 1, 40, 8, 82, 7, 100, 101, 108, 101, 116, 101, 100, 18, 32,
        10, 7, 105, 110, 118, 97, 108, 105, 100, 24, 7, 32, 1, 40, 8, 66, 6, 24, 0, 40, 0, 80, 0,
        82, 7, 105, 110, 118, 97, 108, 105, 100, 18, 37, 10, 14, 110, 111, 95, 112, 101, 114, 109,
        105, 115, 115, 105, 111, 110, 115, 24, 8, 32, 1, 40, 8, 82, 13, 110, 111, 80, 101, 114,
        109, 105, 115, 115, 105, 111, 110, 115, 58, 6, 8, 0, 16, 0, 24, 0>>
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
          json_name: "name",
          label: :LABEL_OPTIONAL,
          name: "name",
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
          json_name: "size",
          label: :LABEL_OPTIONAL,
          name: "size",
          number: 3,
          oneof_index: nil,
          options: nil,
          proto3_optional: nil,
          type: :TYPE_INT64,
          type_name: nil
        },
        %Google.Protobuf.FieldDescriptorProto{
          default_value: nil,
          extendee: nil,
          json_name: "modifiedS",
          label: :LABEL_OPTIONAL,
          name: "modified_s",
          number: 5,
          oneof_index: nil,
          options: nil,
          proto3_optional: nil,
          type: :TYPE_INT64,
          type_name: nil
        },
        %Google.Protobuf.FieldDescriptorProto{
          default_value: nil,
          extendee: nil,
          json_name: "modifiedBy",
          label: :LABEL_OPTIONAL,
          name: "modified_by",
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
          type: :TYPE_UINT64,
          type_name: nil
        },
        %Google.Protobuf.FieldDescriptorProto{
          default_value: nil,
          extendee: nil,
          json_name: "version",
          label: :LABEL_OPTIONAL,
          name: "version",
          number: 9,
          oneof_index: nil,
          options: nil,
          proto3_optional: nil,
          type: :TYPE_MESSAGE,
          type_name: ".protocol.Vector"
        },
        %Google.Protobuf.FieldDescriptorProto{
          default_value: nil,
          extendee: nil,
          json_name: "sequence",
          label: :LABEL_OPTIONAL,
          name: "sequence",
          number: 10,
          oneof_index: nil,
          options: nil,
          proto3_optional: nil,
          type: :TYPE_INT64,
          type_name: nil
        },
        %Google.Protobuf.FieldDescriptorProto{
          default_value: nil,
          extendee: nil,
          json_name: "blocks",
          label: :LABEL_REPEATED,
          name: "blocks",
          number: 16,
          oneof_index: nil,
          options: nil,
          proto3_optional: nil,
          type: :TYPE_MESSAGE,
          type_name: ".protocol.BlockInfo"
        },
        %Google.Protobuf.FieldDescriptorProto{
          default_value: nil,
          extendee: nil,
          json_name: "symlinkTarget",
          label: :LABEL_OPTIONAL,
          name: "symlink_target",
          number: 17,
          oneof_index: nil,
          options: nil,
          proto3_optional: nil,
          type: :TYPE_STRING,
          type_name: nil
        },
        %Google.Protobuf.FieldDescriptorProto{
          default_value: nil,
          extendee: nil,
          json_name: "blocksHash",
          label: :LABEL_OPTIONAL,
          name: "blocks_hash",
          number: 18,
          oneof_index: nil,
          options: nil,
          proto3_optional: nil,
          type: :TYPE_BYTES,
          type_name: nil
        },
        %Google.Protobuf.FieldDescriptorProto{
          default_value: nil,
          extendee: nil,
          json_name: "encrypted",
          label: :LABEL_OPTIONAL,
          name: "encrypted",
          number: 19,
          oneof_index: nil,
          options: nil,
          proto3_optional: nil,
          type: :TYPE_BYTES,
          type_name: nil
        },
        %Google.Protobuf.FieldDescriptorProto{
          default_value: nil,
          extendee: nil,
          json_name: "type",
          label: :LABEL_OPTIONAL,
          name: "type",
          number: 2,
          oneof_index: nil,
          options: nil,
          proto3_optional: nil,
          type: :TYPE_ENUM,
          type_name: ".protocol.FileInfoType"
        },
        %Google.Protobuf.FieldDescriptorProto{
          default_value: nil,
          extendee: nil,
          json_name: "permissions",
          label: :LABEL_OPTIONAL,
          name: "permissions",
          number: 4,
          oneof_index: nil,
          options: nil,
          proto3_optional: nil,
          type: :TYPE_UINT32,
          type_name: nil
        },
        %Google.Protobuf.FieldDescriptorProto{
          default_value: nil,
          extendee: nil,
          json_name: "modifiedNs",
          label: :LABEL_OPTIONAL,
          name: "modified_ns",
          number: 11,
          oneof_index: nil,
          options: nil,
          proto3_optional: nil,
          type: :TYPE_INT32,
          type_name: nil
        },
        %Google.Protobuf.FieldDescriptorProto{
          default_value: nil,
          extendee: nil,
          json_name: "blockSize",
          label: :LABEL_OPTIONAL,
          name: "block_size",
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
          type: :TYPE_INT32,
          type_name: nil
        },
        %Google.Protobuf.FieldDescriptorProto{
          default_value: nil,
          extendee: nil,
          json_name: "localFlags",
          label: :LABEL_OPTIONAL,
          name: "local_flags",
          number: 1000,
          oneof_index: nil,
          options: nil,
          proto3_optional: nil,
          type: :TYPE_UINT32,
          type_name: nil
        },
        %Google.Protobuf.FieldDescriptorProto{
          default_value: nil,
          extendee: nil,
          json_name: "versionHash",
          label: :LABEL_OPTIONAL,
          name: "version_hash",
          number: 1001,
          oneof_index: nil,
          options: nil,
          proto3_optional: nil,
          type: :TYPE_BYTES,
          type_name: nil
        },
        %Google.Protobuf.FieldDescriptorProto{
          default_value: nil,
          extendee: nil,
          json_name: "deleted",
          label: :LABEL_OPTIONAL,
          name: "deleted",
          number: 6,
          oneof_index: nil,
          options: nil,
          proto3_optional: nil,
          type: :TYPE_BOOL,
          type_name: nil
        },
        %Google.Protobuf.FieldDescriptorProto{
          default_value: nil,
          extendee: nil,
          json_name: "invalid",
          label: :LABEL_OPTIONAL,
          name: "invalid",
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
          json_name: "noPermissions",
          label: :LABEL_OPTIONAL,
          name: "no_permissions",
          number: 8,
          oneof_index: nil,
          options: nil,
          proto3_optional: nil,
          type: :TYPE_BOOL,
          type_name: nil
        }
      ],
      name: "FileInfo",
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

  field :name, 1, type: :string
  field :size, 3, type: :int64
  field :modified_s, 5, type: :int64, json_name: "modifiedS"
  field :modified_by, 12, type: :uint64, json_name: "modifiedBy"
  field :version, 9, type: Syncthex.Proto.Protocol.Vector
  field :sequence, 10, type: :int64
  field :blocks, 16, repeated: true, type: Syncthex.Proto.Protocol.BlockInfo
  field :symlink_target, 17, type: :string, json_name: "symlinkTarget"
  field :blocks_hash, 18, type: :bytes, json_name: "blocksHash"
  field :encrypted, 19, type: :bytes
  field :type, 2, type: Syncthex.Proto.Protocol.FileInfoType, enum: true
  field :permissions, 4, type: :uint32
  field :modified_ns, 11, type: :int32, json_name: "modifiedNs"
  field :block_size, 13, type: :int32, json_name: "blockSize"
  field :local_flags, 1000, type: :uint32, json_name: "localFlags"
  field :version_hash, 1001, type: :bytes, json_name: "versionHash"
  field :deleted, 6, type: :bool
  field :invalid, 7, type: :bool
  field :no_permissions, 8, type: :bool, json_name: "noPermissions"
end

defmodule Syncthex.Proto.Protocol.BlockInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          hash: binary,
          offset: integer,
          size: integer,
          weak_hash: non_neg_integer
        }

  defstruct [:hash, :offset, :size, :weak_hash]

  def descriptor do
    # credo:disable-for-next-line
    Elixir.Google.Protobuf.DescriptorProto.decode(
      <<10, 9, 66, 108, 111, 99, 107, 73, 110, 102, 111, 18, 18, 10, 4, 104, 97, 115, 104, 24, 3,
        32, 1, 40, 12, 82, 4, 104, 97, 115, 104, 18, 22, 10, 6, 111, 102, 102, 115, 101, 116, 24,
        1, 32, 1, 40, 3, 82, 6, 111, 102, 102, 115, 101, 116, 18, 18, 10, 4, 115, 105, 122, 101,
        24, 2, 32, 1, 40, 5, 82, 4, 115, 105, 122, 101, 18, 27, 10, 9, 119, 101, 97, 107, 95, 104,
        97, 115, 104, 24, 4, 32, 1, 40, 13, 82, 8, 119, 101, 97, 107, 72, 97, 115, 104, 58, 6, 8,
        0, 16, 0, 24, 0>>
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
          json_name: "hash",
          label: :LABEL_OPTIONAL,
          name: "hash",
          number: 3,
          oneof_index: nil,
          options: nil,
          proto3_optional: nil,
          type: :TYPE_BYTES,
          type_name: nil
        },
        %Google.Protobuf.FieldDescriptorProto{
          default_value: nil,
          extendee: nil,
          json_name: "offset",
          label: :LABEL_OPTIONAL,
          name: "offset",
          number: 1,
          oneof_index: nil,
          options: nil,
          proto3_optional: nil,
          type: :TYPE_INT64,
          type_name: nil
        },
        %Google.Protobuf.FieldDescriptorProto{
          default_value: nil,
          extendee: nil,
          json_name: "size",
          label: :LABEL_OPTIONAL,
          name: "size",
          number: 2,
          oneof_index: nil,
          options: nil,
          proto3_optional: nil,
          type: :TYPE_INT32,
          type_name: nil
        },
        %Google.Protobuf.FieldDescriptorProto{
          default_value: nil,
          extendee: nil,
          json_name: "weakHash",
          label: :LABEL_OPTIONAL,
          name: "weak_hash",
          number: 4,
          oneof_index: nil,
          options: nil,
          proto3_optional: nil,
          type: :TYPE_UINT32,
          type_name: nil
        }
      ],
      name: "BlockInfo",
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

  field :hash, 3, type: :bytes
  field :offset, 1, type: :int64
  field :size, 2, type: :int32
  field :weak_hash, 4, type: :uint32, json_name: "weakHash"
end

defmodule Syncthex.Proto.Protocol.Vector do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          counters: [Syncthex.Proto.Protocol.Counter.t()]
        }

  defstruct [:counters]

  def descriptor do
    # credo:disable-for-next-line
    Elixir.Google.Protobuf.DescriptorProto.decode(
      <<10, 6, 86, 101, 99, 116, 111, 114, 18, 45, 10, 8, 99, 111, 117, 110, 116, 101, 114, 115,
        24, 1, 32, 3, 40, 11, 50, 17, 46, 112, 114, 111, 116, 111, 99, 111, 108, 46, 67, 111, 117,
        110, 116, 101, 114, 82, 8, 99, 111, 117, 110, 116, 101, 114, 115>>
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
          json_name: "counters",
          label: :LABEL_REPEATED,
          name: "counters",
          number: 1,
          oneof_index: nil,
          options: nil,
          proto3_optional: nil,
          type: :TYPE_MESSAGE,
          type_name: ".protocol.Counter"
        }
      ],
      name: "Vector",
      nested_type: [],
      oneof_decl: [],
      options: nil,
      reserved_name: [],
      reserved_range: []
    }
  end

  field :counters, 1, repeated: true, type: Syncthex.Proto.Protocol.Counter
end

defmodule Syncthex.Proto.Protocol.Counter do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          id: non_neg_integer,
          value: non_neg_integer
        }

  defstruct [:id, :value]

  def descriptor do
    # credo:disable-for-next-line
    Elixir.Google.Protobuf.DescriptorProto.decode(
      <<10, 7, 67, 111, 117, 110, 116, 101, 114, 18, 22, 10, 2, 105, 100, 24, 1, 32, 1, 40, 4, 66,
        6, 24, 0, 40, 0, 80, 0, 82, 2, 105, 100, 18, 20, 10, 5, 118, 97, 108, 117, 101, 24, 2, 32,
        1, 40, 4, 82, 5, 118, 97, 108, 117, 101>>
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
          type: :TYPE_UINT64,
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
          type: :TYPE_UINT64,
          type_name: nil
        }
      ],
      name: "Counter",
      nested_type: [],
      oneof_decl: [],
      options: nil,
      reserved_name: [],
      reserved_range: []
    }
  end

  field :id, 1, type: :uint64
  field :value, 2, type: :uint64
end

defmodule Syncthex.Proto.Protocol.Request do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          id: integer,
          folder: String.t(),
          name: String.t(),
          offset: integer,
          size: integer,
          hash: binary,
          from_temporary: boolean,
          weak_hash: non_neg_integer,
          block_no: integer
        }

  defstruct [:id, :folder, :name, :offset, :size, :hash, :from_temporary, :weak_hash, :block_no]

  def descriptor do
    # credo:disable-for-next-line
    Elixir.Google.Protobuf.DescriptorProto.decode(
      <<10, 7, 82, 101, 113, 117, 101, 115, 116, 18, 22, 10, 2, 105, 100, 24, 1, 32, 1, 40, 5, 66,
        6, 24, 0, 40, 0, 80, 0, 82, 2, 105, 100, 18, 22, 10, 6, 102, 111, 108, 100, 101, 114, 24,
        2, 32, 1, 40, 9, 82, 6, 102, 111, 108, 100, 101, 114, 18, 18, 10, 4, 110, 97, 109, 101,
        24, 3, 32, 1, 40, 9, 82, 4, 110, 97, 109, 101, 18, 22, 10, 6, 111, 102, 102, 115, 101,
        116, 24, 4, 32, 1, 40, 3, 82, 6, 111, 102, 102, 115, 101, 116, 18, 18, 10, 4, 115, 105,
        122, 101, 24, 5, 32, 1, 40, 5, 82, 4, 115, 105, 122, 101, 18, 18, 10, 4, 104, 97, 115,
        104, 24, 6, 32, 1, 40, 12, 82, 4, 104, 97, 115, 104, 18, 37, 10, 14, 102, 114, 111, 109,
        95, 116, 101, 109, 112, 111, 114, 97, 114, 121, 24, 7, 32, 1, 40, 8, 82, 13, 102, 114,
        111, 109, 84, 101, 109, 112, 111, 114, 97, 114, 121, 18, 27, 10, 9, 119, 101, 97, 107, 95,
        104, 97, 115, 104, 24, 8, 32, 1, 40, 13, 82, 8, 119, 101, 97, 107, 72, 97, 115, 104, 18,
        25, 10, 8, 98, 108, 111, 99, 107, 95, 110, 111, 24, 9, 32, 1, 40, 5, 82, 7, 98, 108, 111,
        99, 107, 78, 111>>
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
          type: :TYPE_INT32,
          type_name: nil
        },
        %Google.Protobuf.FieldDescriptorProto{
          default_value: nil,
          extendee: nil,
          json_name: "folder",
          label: :LABEL_OPTIONAL,
          name: "folder",
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
          json_name: "name",
          label: :LABEL_OPTIONAL,
          name: "name",
          number: 3,
          oneof_index: nil,
          options: nil,
          proto3_optional: nil,
          type: :TYPE_STRING,
          type_name: nil
        },
        %Google.Protobuf.FieldDescriptorProto{
          default_value: nil,
          extendee: nil,
          json_name: "offset",
          label: :LABEL_OPTIONAL,
          name: "offset",
          number: 4,
          oneof_index: nil,
          options: nil,
          proto3_optional: nil,
          type: :TYPE_INT64,
          type_name: nil
        },
        %Google.Protobuf.FieldDescriptorProto{
          default_value: nil,
          extendee: nil,
          json_name: "size",
          label: :LABEL_OPTIONAL,
          name: "size",
          number: 5,
          oneof_index: nil,
          options: nil,
          proto3_optional: nil,
          type: :TYPE_INT32,
          type_name: nil
        },
        %Google.Protobuf.FieldDescriptorProto{
          default_value: nil,
          extendee: nil,
          json_name: "hash",
          label: :LABEL_OPTIONAL,
          name: "hash",
          number: 6,
          oneof_index: nil,
          options: nil,
          proto3_optional: nil,
          type: :TYPE_BYTES,
          type_name: nil
        },
        %Google.Protobuf.FieldDescriptorProto{
          default_value: nil,
          extendee: nil,
          json_name: "fromTemporary",
          label: :LABEL_OPTIONAL,
          name: "from_temporary",
          number: 7,
          oneof_index: nil,
          options: nil,
          proto3_optional: nil,
          type: :TYPE_BOOL,
          type_name: nil
        },
        %Google.Protobuf.FieldDescriptorProto{
          default_value: nil,
          extendee: nil,
          json_name: "weakHash",
          label: :LABEL_OPTIONAL,
          name: "weak_hash",
          number: 8,
          oneof_index: nil,
          options: nil,
          proto3_optional: nil,
          type: :TYPE_UINT32,
          type_name: nil
        },
        %Google.Protobuf.FieldDescriptorProto{
          default_value: nil,
          extendee: nil,
          json_name: "blockNo",
          label: :LABEL_OPTIONAL,
          name: "block_no",
          number: 9,
          oneof_index: nil,
          options: nil,
          proto3_optional: nil,
          type: :TYPE_INT32,
          type_name: nil
        }
      ],
      name: "Request",
      nested_type: [],
      oneof_decl: [],
      options: nil,
      reserved_name: [],
      reserved_range: []
    }
  end

  field :id, 1, type: :int32
  field :folder, 2, type: :string
  field :name, 3, type: :string
  field :offset, 4, type: :int64
  field :size, 5, type: :int32
  field :hash, 6, type: :bytes
  field :from_temporary, 7, type: :bool, json_name: "fromTemporary"
  field :weak_hash, 8, type: :uint32, json_name: "weakHash"
  field :block_no, 9, type: :int32, json_name: "blockNo"
end

defmodule Syncthex.Proto.Protocol.Response do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          id: integer,
          data: binary,
          code: Syncthex.Proto.Protocol.ErrorCode.t()
        }

  defstruct [:id, :data, :code]

  def descriptor do
    # credo:disable-for-next-line
    Elixir.Google.Protobuf.DescriptorProto.decode(
      <<10, 8, 82, 101, 115, 112, 111, 110, 115, 101, 18, 22, 10, 2, 105, 100, 24, 1, 32, 1, 40,
        5, 66, 6, 24, 0, 40, 0, 80, 0, 82, 2, 105, 100, 18, 18, 10, 4, 100, 97, 116, 97, 24, 2,
        32, 1, 40, 12, 82, 4, 100, 97, 116, 97, 18, 39, 10, 4, 99, 111, 100, 101, 24, 3, 32, 1,
        40, 14, 50, 19, 46, 112, 114, 111, 116, 111, 99, 111, 108, 46, 69, 114, 114, 111, 114, 67,
        111, 100, 101, 82, 4, 99, 111, 100, 101>>
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
          type: :TYPE_INT32,
          type_name: nil
        },
        %Google.Protobuf.FieldDescriptorProto{
          default_value: nil,
          extendee: nil,
          json_name: "data",
          label: :LABEL_OPTIONAL,
          name: "data",
          number: 2,
          oneof_index: nil,
          options: nil,
          proto3_optional: nil,
          type: :TYPE_BYTES,
          type_name: nil
        },
        %Google.Protobuf.FieldDescriptorProto{
          default_value: nil,
          extendee: nil,
          json_name: "code",
          label: :LABEL_OPTIONAL,
          name: "code",
          number: 3,
          oneof_index: nil,
          options: nil,
          proto3_optional: nil,
          type: :TYPE_ENUM,
          type_name: ".protocol.ErrorCode"
        }
      ],
      name: "Response",
      nested_type: [],
      oneof_decl: [],
      options: nil,
      reserved_name: [],
      reserved_range: []
    }
  end

  field :id, 1, type: :int32
  field :data, 2, type: :bytes
  field :code, 3, type: Syncthex.Proto.Protocol.ErrorCode, enum: true
end

defmodule Syncthex.Proto.Protocol.DownloadProgress do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          folder: String.t(),
          updates: [Syncthex.Proto.Protocol.FileDownloadProgressUpdate.t()]
        }

  defstruct [:folder, :updates]

  def descriptor do
    # credo:disable-for-next-line
    Elixir.Google.Protobuf.DescriptorProto.decode(
      <<10, 16, 68, 111, 119, 110, 108, 111, 97, 100, 80, 114, 111, 103, 114, 101, 115, 115, 18,
        22, 10, 6, 102, 111, 108, 100, 101, 114, 24, 1, 32, 1, 40, 9, 82, 6, 102, 111, 108, 100,
        101, 114, 18, 62, 10, 7, 117, 112, 100, 97, 116, 101, 115, 24, 2, 32, 3, 40, 11, 50, 36,
        46, 112, 114, 111, 116, 111, 99, 111, 108, 46, 70, 105, 108, 101, 68, 111, 119, 110, 108,
        111, 97, 100, 80, 114, 111, 103, 114, 101, 115, 115, 85, 112, 100, 97, 116, 101, 82, 7,
        117, 112, 100, 97, 116, 101, 115>>
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
          json_name: "folder",
          label: :LABEL_OPTIONAL,
          name: "folder",
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
          json_name: "updates",
          label: :LABEL_REPEATED,
          name: "updates",
          number: 2,
          oneof_index: nil,
          options: nil,
          proto3_optional: nil,
          type: :TYPE_MESSAGE,
          type_name: ".protocol.FileDownloadProgressUpdate"
        }
      ],
      name: "DownloadProgress",
      nested_type: [],
      oneof_decl: [],
      options: nil,
      reserved_name: [],
      reserved_range: []
    }
  end

  field :folder, 1, type: :string
  field :updates, 2, repeated: true, type: Syncthex.Proto.Protocol.FileDownloadProgressUpdate
end

defmodule Syncthex.Proto.Protocol.FileDownloadProgressUpdate do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          update_type: Syncthex.Proto.Protocol.FileDownloadProgressUpdateType.t(),
          name: String.t(),
          version: Syncthex.Proto.Protocol.Vector.t() | nil,
          block_indexes: integer,
          block_size: integer
        }

  defstruct [:update_type, :name, :version, :block_indexes, :block_size]

  def descriptor do
    # credo:disable-for-next-line
    Elixir.Google.Protobuf.DescriptorProto.decode(
      <<10, 26, 70, 105, 108, 101, 68, 111, 119, 110, 108, 111, 97, 100, 80, 114, 111, 103, 114,
        101, 115, 115, 85, 112, 100, 97, 116, 101, 18, 73, 10, 11, 117, 112, 100, 97, 116, 101,
        95, 116, 121, 112, 101, 24, 1, 32, 1, 40, 14, 50, 40, 46, 112, 114, 111, 116, 111, 99,
        111, 108, 46, 70, 105, 108, 101, 68, 111, 119, 110, 108, 111, 97, 100, 80, 114, 111, 103,
        114, 101, 115, 115, 85, 112, 100, 97, 116, 101, 84, 121, 112, 101, 82, 10, 117, 112, 100,
        97, 116, 101, 84, 121, 112, 101, 18, 18, 10, 4, 110, 97, 109, 101, 24, 2, 32, 1, 40, 9,
        82, 4, 110, 97, 109, 101, 18, 42, 10, 7, 118, 101, 114, 115, 105, 111, 110, 24, 3, 32, 1,
        40, 11, 50, 16, 46, 112, 114, 111, 116, 111, 99, 111, 108, 46, 86, 101, 99, 116, 111, 114,
        82, 7, 118, 101, 114, 115, 105, 111, 110, 18, 45, 10, 13, 98, 108, 111, 99, 107, 95, 105,
        110, 100, 101, 120, 101, 115, 24, 4, 32, 3, 40, 5, 66, 8, 16, 0, 24, 0, 40, 0, 80, 0, 82,
        12, 98, 108, 111, 99, 107, 73, 110, 100, 101, 120, 101, 115, 18, 29, 10, 10, 98, 108, 111,
        99, 107, 95, 115, 105, 122, 101, 24, 5, 32, 1, 40, 5, 82, 9, 98, 108, 111, 99, 107, 83,
        105, 122, 101>>
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
          json_name: "updateType",
          label: :LABEL_OPTIONAL,
          name: "update_type",
          number: 1,
          oneof_index: nil,
          options: nil,
          proto3_optional: nil,
          type: :TYPE_ENUM,
          type_name: ".protocol.FileDownloadProgressUpdateType"
        },
        %Google.Protobuf.FieldDescriptorProto{
          default_value: nil,
          extendee: nil,
          json_name: "name",
          label: :LABEL_OPTIONAL,
          name: "name",
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
          json_name: "version",
          label: :LABEL_OPTIONAL,
          name: "version",
          number: 3,
          oneof_index: nil,
          options: nil,
          proto3_optional: nil,
          type: :TYPE_MESSAGE,
          type_name: ".protocol.Vector"
        },
        %Google.Protobuf.FieldDescriptorProto{
          default_value: nil,
          extendee: nil,
          json_name: "blockIndexes",
          label: :LABEL_REPEATED,
          name: "block_indexes",
          number: 4,
          oneof_index: nil,
          options: %Google.Protobuf.FieldOptions{
            __pb_extensions__: %{},
            ctype: :STRING,
            deprecated: false,
            jstype: :JS_NORMAL,
            lazy: false,
            packed: false,
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
          json_name: "blockSize",
          label: :LABEL_OPTIONAL,
          name: "block_size",
          number: 5,
          oneof_index: nil,
          options: nil,
          proto3_optional: nil,
          type: :TYPE_INT32,
          type_name: nil
        }
      ],
      name: "FileDownloadProgressUpdate",
      nested_type: [],
      oneof_decl: [],
      options: nil,
      reserved_name: [],
      reserved_range: []
    }
  end

  field :update_type, 1,
    type: Syncthex.Proto.Protocol.FileDownloadProgressUpdateType,
    enum: true,
    json_name: "updateType"

  field :name, 2, type: :string
  field :version, 3, type: Syncthex.Proto.Protocol.Vector
  field :block_indexes, 4, repeated: true, type: :int32, json_name: "blockIndexes"
  field :block_size, 5, type: :int32, json_name: "blockSize"
end

defmodule Syncthex.Proto.Protocol.Ping do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []

  def descriptor do
    # credo:disable-for-next-line
    Elixir.Google.Protobuf.DescriptorProto.decode(<<10, 4, 80, 105, 110, 103>>)
  end

  def descriptor_plain do
    %Google.Protobuf.DescriptorProto{
      enum_type: [],
      extension: [],
      extension_range: [],
      field: [],
      name: "Ping",
      nested_type: [],
      oneof_decl: [],
      options: nil,
      reserved_name: [],
      reserved_range: []
    }
  end
end

defmodule Syncthex.Proto.Protocol.Close do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          reason: String.t()
        }

  defstruct [:reason]

  def descriptor do
    # credo:disable-for-next-line
    Elixir.Google.Protobuf.DescriptorProto.decode(
      <<10, 5, 67, 108, 111, 115, 101, 18, 22, 10, 6, 114, 101, 97, 115, 111, 110, 24, 1, 32, 1,
        40, 9, 82, 6, 114, 101, 97, 115, 111, 110>>
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
          json_name: "reason",
          label: :LABEL_OPTIONAL,
          name: "reason",
          number: 1,
          oneof_index: nil,
          options: nil,
          proto3_optional: nil,
          type: :TYPE_STRING,
          type_name: nil
        }
      ],
      name: "Close",
      nested_type: [],
      oneof_decl: [],
      options: nil,
      reserved_name: [],
      reserved_range: []
    }
  end

  field :reason, 1, type: :string
end
