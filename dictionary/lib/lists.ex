defmodule Lists do
  def len([]), do: 0
  def len([_h | t]), do: 1 + len(t)

  def sum([]), do: 0
  def sum([h | t]), do: h + sum(t)

  def square([]), do: []
  def square([h | t]), do: [h * h | square(t)]

  # map([1, 2, 3], fn x -> x*x end)
  def map([], _func), do: []
  def map([h | t], func), do: [func.(h) | map(t, func)]
end
