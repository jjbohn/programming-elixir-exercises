import :timer, only: [sleep: 1]

defmodule Link1 do
  def sad_method do
    sleep 500
    exit(99)
  end

  def run do
    spawn(Link1, :sad_method, [])

    receive do
      msg -> IO.puts "message received: #{inspect msg}"
    after 1000 -> IO.puts "nothing happened"
    end
  end
end

defmodule Link2 do
  def sad_method do
    sleep 500
    exit(99)
  end

  def run do
    spawn_link(Link2, :sad_method, [])

    receive do msg ->
      IO.puts "Test"
    after 1000 ->
      IO.puts "Nothing happened as far as I am concerned"
    end
  end
end
