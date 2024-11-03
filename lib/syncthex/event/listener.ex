defmodule Syncthex.Event.Listener do
  use GenServer
  alias Syncthex.Event.Listener.State
  alias Syncthex.Event.Listener.Config

  def start_link do
    GenServer.start_link(__MODULE__, [], name: __MODULE__)
  end

  @spec init(Ketword.t()) :: {:ok, State.t()}
  @impl true
  def init(opts) do
    with config <- Config.get_config(opts),
         client <- Syncthex.Syncthing.REST.client(%{url: config.url, key: config.api_key}),
         do:
           {:ok,
            %State{
              config: config,
              client: client
            }
            |> connect()}
  end

  def connect(%{client: client, last_seen_id: since} = state) do
    with notify_pid <- self(),
         {:ok, task} <-
           Task.start(fn ->
             call_rest_async(client, notify_pid, since: since)
           end),
         do: %{state | listening_task: task, monitor_ref: Process.monitor(task)}
  end

  @impl true
  def handle_info({:events, %{last_id: last_id, events: events}}, state) do
    IO.puts("Received #{length(events)} events")

    {:noreply, %{state | last_seen_id: last_id}}
  end

  def handle_info(:connect, state), do: {:noreply, connect(state)}

  def handle_info({:DOWN, ref, _process, _pid, _reason}, %{monitor_ref: ref} = state) do
    IO.puts("Task has finished")
    Process.send_after(self(), :connect, 1000)
    {:noreply, %{state | listening_task: nil, monitor_ref: nil}}
  end

  defp call_rest_async(client, notify_me, opts) do
    with call_params <-
           opts
           |> Keyword.take([:since, :limit, :timeout])
           |> Keyword.put_new(:timeout, 10000),
         {:ok, events} <- Syncthex.Syncthing.REST.events(client, call_params),
         last_event <- events |> List.last(),
         do: send(notify_me, {:events, %{events: events, last_id: last_event.id}})
  end
end
