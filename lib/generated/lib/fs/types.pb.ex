defmodule Syncthex.Proto.FilesystemType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :FILESYSTEM_TYPE_BASIC | :FILESYSTEM_TYPE_FAKE

  field :FILESYSTEM_TYPE_BASIC, 0
  field :FILESYSTEM_TYPE_FAKE, 1
end
