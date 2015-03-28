defmodule Chop do
  def guess(actual, min..max) do
    current = div(min + max, 2)

    IO.puts("Is it #{current}")

    _guess(current, actual, min..max)
  end

  def _guess(current, actual, min..max) when current > actual do
    guess(actual, min..current - 1)
  end

  def _guess(current, actual, min..max) when current < actual do
    guess(actual, current + 1..max)
  end

  def _guess(current, actual, _) do
    IO.puts "#{current}"
  end
end

# greater than half? => NO
# less than half? => NO
# it is that number


# greater than half? => NO
# less than half? => YES
# greater than half?


# guess(273, 251..500)
