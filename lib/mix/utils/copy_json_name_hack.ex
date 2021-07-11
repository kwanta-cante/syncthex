defmodule Mix.Utils.CopyJsonNameHack do
  def process(any), do: process(any, [])
  def process([file|rest], opts), do: [process(file, opts)|process(rest, opts)]
  def process(file, opts) when is_bitstring(file) do
    abs_file=
      case opts[:prefix] do
        nil-> file
        prefix-> Path.join(prefix, file)
      end
    content= File.read!(abs_file)
    new_content= replace_content(content)

    if new_content == content do
      raise "received patched content which is equal to original"
    else
      if not is_nil(replace_content(new_content)) do
        raise  "setting a senconf time json_name doer alter the content"
      end
    end
    if new_content do
      File.write!(abs_file, new_content)
    end
    file
  end
  def process([],_), do: []
  # returns the modified content or null
  def replace_content(nil), do: nil
  def replace_content(old_content) do
    new_content =
      ~r/\[(.*)[(]\W*ext.json\W*[)][^=]*=[^"]*\"([^"]+).*;/m
      |> Regex.scan( old_content )
      |> Enum.reduce(old_content, fn
          [line, leading_prop, value], content->
            if String.contains?(leading_prop, "json_name") do
              content
            else
              replacement =
                [
                  "[",
                  "json_name = \"#{value}\",",
                  String.replace(line, "[","")
                ]
                |> Enum.filter(fn
                    ""-> false
                    _-> true
                  end)
                |> Enum.join(" ")
              String.replace(content,line, replacement)
            end
          _other_match_result, content->content
        end)
    if old_content==new_content do
      nil
    else
      new_content
    end
  end
end
