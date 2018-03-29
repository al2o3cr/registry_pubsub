defmodule EventSink.Application do
  use Application

  def start(_type, _args) do
    children = [
      EventSink
    ]

    opts = [strategy: :one_for_one, name: EventSink.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
