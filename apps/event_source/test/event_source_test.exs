defmodule EventSourceTest do
  use ExUnit.Case
  doctest EventSource

  test "greets the world" do
    assert EventSource.hello() == :world
  end
end
