defmodule Syncthex.Syncthing.JsonPatcher do
  @moduledoc """
  Module coercing a map structure (parsed from json) into the correct
  enum and numeric type, such that those are not rejected by probuf json.

  The value transformations are:

    - `&enum_val_matches?/2` matches  ":FOLDER_TYPE_SEND_ONLY" to "sendonly" (lower case `&String.ends_with?/2` test after "_" are removed)
    - `&with_float_coerce/1` will transform integer json values into floating values for processing by Protobuf
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
    msg_props = msg_def.__message_props__
    key = case name do
      "maxRequestKiB"-> :max_request_kib
      "junctionsAsDirs" -> :follow_junctions
      "pullerMaxPendingKiB" -> :puller_max_pending_kib
      "insecureSkipHostcheck" -> :insecure_skip_host_check
      "urSeen" -> :usage_reporting_seen
      "urAccepted" -> :usage_reporting_accepted
      "localAnnounceEnabled" -> :local_announce_enabled
      "localAnnounceMCAddr" -> :local_announce_multicast_address
      "globalAnnounceServers" -> :global_discovery_servers
      "globalAnnounceEnabled" -> :global_discovery_enabled
      "urUniqueId" -> :usage_reporting_unique_id
      "relayReconnectIntervalM" -> :relays_reconnect_interval_m
      "crURL" -> :crash_reporting_url
      "urPostInsecurely" -> :usage_reporting_post_insecurely
      "urURL" -> :usage_reporting_url
      "natRenewalMinutes" -> :nat_traversal_renewal_m
      "natLeaseMinutes" -> :nat_traversal_lease_m
      "maxConcurrentIncomingRequestKiB" -> :max_concurrent_incoming_request_kib
      "urInitialDelayS" -> :usage_reporting_initial_delay_s
      "unackedNotificationIDs" -> :unacked_notification_ids
      "natTimeoutSeconds" -> :nat_traversal_timeout_s
      "natEnabled" -> :nat_traversal_enabled
      "remoteIgnoredDevices" -> :ignored_devices
      _ -> String.to_existing_atom(Macro.underscore(name))
    end
    field_id =
      msg_props.field_tags
      |> Map.get(key)
    ret = msg_props.field_props[field_id]
    unless ret do
      require IEx; IEx.pry
    end
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
