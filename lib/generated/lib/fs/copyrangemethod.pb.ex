defmodule Syncthex.Proto.CopyRangeMethod do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :COPY_RANGE_METHOD_STANDARD
          | :COPY_RANGE_METHOD_IOCTL
          | :COPY_RANGE_METHOD_COPY_FILE_RANGE
          | :COPY_RANGE_METHOD_SEND_FILE
          | :COPY_RANGE_METHOD_DUPLICATE_EXTENTS
          | :COPY_RANGE_METHOD_ALL_WITH_FALLBACK

  field :COPY_RANGE_METHOD_STANDARD, 0
  field :COPY_RANGE_METHOD_IOCTL, 1
  field :COPY_RANGE_METHOD_COPY_FILE_RANGE, 2
  field :COPY_RANGE_METHOD_SEND_FILE, 3
  field :COPY_RANGE_METHOD_DUPLICATE_EXTENTS, 4
  field :COPY_RANGE_METHOD_ALL_WITH_FALLBACK, 5
end
