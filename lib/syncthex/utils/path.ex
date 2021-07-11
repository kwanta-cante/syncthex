defmodule Syncthex.Utils.Path do
  @doc"""
    Similar to path.relative_to, but accepts absolute paths
  """
  def relative_to(path, other_path) do
    {split_path, split_other_path}=
      {Path.split(path), Path.split(other_path)}
    {split_path, split_other_path}=
      case length(split_path) - length(split_other_path) do
        len when len < 0 -> {
          split_path ++ (1..(-len)|> Enum.map(fn _ -> nil end))  ,
          split_other_path
          }
        len when len > 0 -> {
          split_path ,
          split_other_path ++  (1..len|> Enum.map(fn _ -> nil end))
        }
        0 -> {split_path, split_other_path}
      end
    Enum.zip(split_path,split_other_path)
    |> Enum.reduce([], &relative_path_reducer/2)
    |> Path.join()

  end
  def relative_path_reducer({nil, other_path_elm}, result), do: result ++ [other_path_elm]
  def relative_path_reducer({path_elm, nil}, result), do: [".."| result]

  def relative_path_reducer({path_elm, other_path_elm}, result) do
    if path_elm == other_path_elm do
      result
    else
      result = [".."] ++ result++ [other_path_elm]
    end
  end
end
