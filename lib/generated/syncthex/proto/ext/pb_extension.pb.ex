defmodule Syncthex.Proto.Ext.PbExtension do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.13.0"

  extend Google.Protobuf.MessageOptions, :xml_tags, 74001, optional: true, type: :bool

  extend Google.Protobuf.FieldOptions, :xml, 75005, optional: true, type: :string

  extend Google.Protobuf.FieldOptions, :json, 75006, optional: true, type: :string

  extend Google.Protobuf.FieldOptions, :default, 75007, optional: true, type: :string

  extend Google.Protobuf.FieldOptions, :restart, 75008, optional: true, type: :bool

  extend Google.Protobuf.FieldOptions, :device_id, 75009, optional: true, type: :bool

  extend Google.Protobuf.FieldOptions, :goname, 75010, optional: true, type: :string

  extend Google.Protobuf.FieldOptions, :gotype, 75011, optional: true, type: :string

  extend Google.Protobuf.FieldOptions, :nodefault, 75012, optional: true, type: :bool

  extend Google.Protobuf.EnumValueOptions, :enumgoname, 76010, optional: true, type: :string
end