defmodule PatternMatching1 do
  def swap({a, b}), do: {b, a}

  def same({a, a}), do: true
  def same({_, _}), do: false
end
