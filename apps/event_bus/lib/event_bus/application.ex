defmodule EventBus.Application do
  @moduledoc """
  Starts the registry
  """
  use Application

  def start(_type, _args) do
    children = [
      {Registry, keys: :duplicate, name: EventBus.Registry}
    ]

    opts = [strategy: :one_for_one, name: EventBus.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
