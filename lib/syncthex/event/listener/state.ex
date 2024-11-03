defmodule Syncthex.Event.Listener.State do
  defstruct config: %Syncthex.Event.Listener.Config{},
            client: nil,
            listening_task: nil,
            monitor_ref: nil,
            last_seen_id: 0

  @type t :: %__MODULE__{
          config: %Syncthex.Event.Listener.Config{},
          client: Tesla.Client.t(),
          listening_task: pid(),
          monitor_ref: reference(),
          last_seen_id: integer()
        }
end
