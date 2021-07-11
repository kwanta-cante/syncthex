defmodule Syncthex.Syncthing.JsonPatcher do
  @moduledoc """
  Module coercing a map structure (parsed from json) into the correct
  enum and numeric type, such that those are not rejected by probuf json.

  The value transformations are:

    - for enum some custom property names are mapped to the struct.
    - `&with_float_coerce/1` will transform integer json values into floating values for processing by Protobuf

  ## TODO:
    Manual Mapping is done for some json fields. This is nessesary because []()
    This is because the extention property ext.json, which is properly contained in

  """
  def patch(%{}= json_message, proto_type ) do
    json_message
    |> Enum.map(fn {k, v} -> {k, with_patch(k, v, get_field_type(proto_type, k))} end)
    |> Map.new()
  end
  @doc """
  finds the field type in `module` as specified by name
  the name is supplied as a string
  """
  defp get_field_type(msg_def, name) when is_bitstring(name) and is_atom(msg_def) do
   ret=
    msg_def.__message_props__.field_props
    |> Enum.find( fn {idx, field_spec}->  field_spec.json_name==name end)
    |> elem(1)
  ret
  end
  def with_patch(name, [first_value| other_vals], field_def), do: [
      with_patch(name, first_value, field_def)
      |with_patch(name,other_vals, field_def)
    ]

  def with_patch(name, value,  %Protobuf.FieldProps{type: type })
    when type in [:float, :double],
    do: with_float_coerce(value)

  def with_patch(name, value, %Protobuf.FieldProps{enum?: true, type: {:enum, enum_type} }) do
      mapping = enum_type.__reverse_mapping__()
      case Map.get(mapping, value) do
        nil->
          mapping
          |> Map.keys()
          |> Enum.find(fn k -> enum_val_matches?(k, value) end)
        _-> value
      end
  end
  def with_patch(name, %{}=value,  %Protobuf.FieldProps{ type: type }),
    do: patch(value, type)
  #finisher
  def with_patch(name,value, field), do: value

  def enum_val_matches?(pb_val, json_val) when is_bitstring(pb_val) and is_bitstring(json_val), do:
    pb_val
    |> String.replace("_","")
    |> String.downcase()
    |> String.ends_with?(json_val)
  def enum_val_matches?(pb_val, json_val), do: pb_val==json_val
  def with_float_coerce(intval) when is_integer(intval), do: intval*1.0
  def with_float_coerce(val) when is_float(val), do: val
  def with_float_coerce( val), do: raise "value #{inspect(val)} cannot be coerced into float"
end
