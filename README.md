# RegistryPubsub

This is a quick example of using the `Elixir.Registry` module as part of an event bus.

Processes can register to receive events by calling `EventBus.add_listener` with a key.

Processes can unregister by calling `EventBus.remove_listener`. `Elixir.Registry` will automatically remove entries for processes which terminate.

Events are placed on the bus with `EventBus.cast_event` with a key and a payload.

The registry uses ETS to preserve state even if it crashes.

Fun thing to try: launch the app with `iex -S mix` and start Observer. Notice that killing `EventSource`, `EventSink` or `EventBus.Registry` does not result in the messages stopping.

Links:

* [Hexdocs](https://hexdocs.pm/elixir/Registry.html#content)

* [A blog post that was handy](https://medium.com/elixirlabs/registry-in-elixir-1-4-0-d6750fb5aeb) Note: this uses supervisor specs that were subsequently deprecated
