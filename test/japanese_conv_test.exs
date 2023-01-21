defmodule JapaneseConvTest do
  use ExUnit.Case
  doctest JapaneseConv

  test "greets the world" do
    assert JapaneseConv.hello() == :world
  end
end
