defmodule EventBus do
  @moduledoc """
  Public interface for the event bus.
  """

  def add_listener(key) do
    {:ok, _} = Registry.register(EventBus.Registry, key, [])
    :ok
  end

  def remove_listener(key) do
    Registry.unregister(EventBus.Registry, key)
  end

  def cast_event(key, payload) do
    Registry.dispatch(EventBus.Registry, key, fn entries ->
      for {pid, _} <- entries, do: send(pid, {:cast_event, key, payload})
    end)
  end
end
