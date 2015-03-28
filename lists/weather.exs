defmodule WeatherHistory do
  def for_location_27([]), do: []
  def for_location_27([[time, 27, temp, rain] | tail]) do
    [[time, 27, temp, rain] | for_location_27(tail)]
  end
  def for_location_27([]), do: []





  def for_location([], target_loc), do: []
  def for_location([head = [_, target_loc, _, _] | tail]) do
    [head | for_location(tail, target_loc)]
  end
  def for_location([_ | tail]), do: for_location(tail, target_loc)
end
