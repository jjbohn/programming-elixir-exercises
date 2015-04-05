defmodule Sequence.Server do
  use GenServer

  def init(current_number)
  when is_number(current_number) do
    { :ok, current_number }
  end

  def handle_call(:next_number, _from, current_number) do
    { :reply, current_number, current_number + 1 }
  end
end

defmodule Stack.Server do
  use GenServer

  def init(stack)
  when is_list(stack) do
    { :ok, stack }
  end

  def handle_call(:pop, _from, []), do: raise "Empty stack"
  def handle_call(:pop, _from, [head | tail]) do
    { :reply, head, tail }
  end
end
