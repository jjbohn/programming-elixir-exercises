defmodule Parralel do
  def pmap(collection, fun) do
    me = self

    collection
    |>
    Enum.map(fn (elem) ->
      :timer.sleep(:random.uniform(250))
      spawn_link fn -> send me, {self, fun.(elem) } end
    end)
    |>
    Enum.map(fn (pid) ->
      receive do { ^pid, result } ->
          result
      end
    end)
  end
end
