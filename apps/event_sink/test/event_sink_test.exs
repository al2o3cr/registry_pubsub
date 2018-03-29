defmodule EventSinkTest do
  use ExUnit.Case
  doctest EventSink

  test "greets the world" do
    assert EventSink.hello() == :world
  end
end
