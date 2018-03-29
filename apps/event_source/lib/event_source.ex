defmodule EventSource do
  @moduledoc """
  Server that puts events onto the bus
  """

  use GenServer

  def start_link(_) do
    GenServer.start_link(__MODULE__, [])
  end

  def init(state) do
    {:ok, state, 1000}
  end

  def handle_info(:timeout, state) do
    EventBus.cast_event(:some_key, "OH HAI")
    {:noreply, state, 1000}
  end
end
