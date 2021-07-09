defmodule Syncthex.Utils.FileList do
  @moduledoc """
    creating file lists by adding filenames and globs
  """
  def add_glob(list, glob), do: list ++Path.wildcard(glob)
  def add_file(list, file), do: list++[file]
end
