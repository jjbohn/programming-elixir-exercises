defmodule MyList do
  def len([]), do: 0
  def len([_head|tail]), do: 1 + len(tail)

  def square([]), do: []
  def square([head | tail]), do: [head * head | square(tail)]

  def add_one([]), do: []
  def add_one([head | tail]), do: [head + 1 | add_one(tail)]

  def map([], _func), do: []
  def map([head | tail], func), do: [func.(head) | map(tail, func)]

  def sum(list), do: _sum(list, 0)
  def _sum([], total), do: total
  def _sum([head | tail], total), do: _sum(tail, head + total)

  def no_acc_sum([]), do: 0
  def no_acc_sum([head | tail]), do: head + no_acc_sum(tail)
end
