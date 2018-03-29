defmodule EventSink do
  @moduledoc """
  Server that puts events onto the bus
  """

  use GenServer

  def start_link(_) do
    GenServer.start_link(__MODULE__, [])
  end

  def init(state) do
    EventBus.add_listener(:some_key)
    {:ok, state}
  end

  def handle_info({:cast_event, :some_key, payload}, state) do
    IO.inspect(payload)
    {:noreply, state}
  end
end
