defmodule Syncthex.Utils.PathTests do
  use ExUnit.Case
  alias Syncthex.Utils
  test "testing relative paths on the same level" do
    assert "../d/e" == Utils.Path.relative_to("/a/b/c", "/a/b/d/e")
  end
end
