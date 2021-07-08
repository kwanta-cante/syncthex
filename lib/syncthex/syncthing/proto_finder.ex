defmodule Syncthex.Syncthing.ProtoFinder do

  def all_proto_files do
    globs = case Application.get_env(:syncthex, :protobuf_def_glob) do
      [_|_]=list->list
      other-> [other]
    end
    globs
    |> Enum.map(&Path.wildcard/1)
    |> List.flatten
  end
end
