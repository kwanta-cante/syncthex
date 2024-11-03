defmodule Syncthex.Event.Listener.Config do
  @moduledoc """
  Configuration for the Syncthing event listener.
  """
  defstruct url: "http://localhost:8384",
            api_key: nil

  defp do_get_config(init_opts),
    do:
      [
        url:
          Application.get_env(:syncthing, :url) ||
            System.get_env("SYNCTHING_URL"),
        api_key:
          Application.get_env(:syncthing, :api_key) || System.get_env("SYNCTHING_API_KEY") ||
            raise("No API key provided for connecting to Syncthing")
      ]
      |> Keyword.merge(init_opts)
      |> Enum.filter(fn {_, value} -> value != nil end)

  @doc """
  Get the configuration for the Syncthing event listener.
  """
  @spec get_config(Keyword.t()) :: %__MODULE__{}
  def get_config(init_opts),
    do:
      do_get_config(init_opts)
      |> Enum.reduce(%__MODULE__{}, fn {key, value}, acc ->
        %{acc | key => value}
      end)
end
