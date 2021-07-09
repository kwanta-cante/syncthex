defmodule Syncthex.Proto.FolderType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :FOLDER_TYPE_SEND_RECEIVE
          | :FOLDER_TYPE_SEND_ONLY
          | :FOLDER_TYPE_RECEIVE_ONLY
          | :FOLDER_TYPE_RECEIVE_ENCRYPTED

  field :FOLDER_TYPE_SEND_RECEIVE, 0
  field :FOLDER_TYPE_SEND_ONLY, 1
  field :FOLDER_TYPE_RECEIVE_ONLY, 2
  field :FOLDER_TYPE_RECEIVE_ENCRYPTED, 3
end
