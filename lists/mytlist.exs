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

  def reduce([], value, _), do: value
  def reduce([head | tail], value, fun) do
    reduce(tail, fun.(head, value), fun)
  end

  def mapsum([], _fun), do: 0
  def mapsum([head | tail], fun), do: fun.(head) + mapsum(tail, fun)

  def max(list), do: _max(list, 0)
  def _max([], n), do: n
  def _max([head | tail], acc) when head >= acc, do: _max(tail, head)
  def _max([head | tail], acc) when head < acc, do: _max(tail, acc)

  def caeser(chars, 0), do: chars
  def caeser(chars, shift), do: _caeser(chars, shift)
  def _caeser([head | tail], shift) when [head + shift] > 'z' do

  end
end
