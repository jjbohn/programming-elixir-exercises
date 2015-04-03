import :timer, only: [sleep: 1]

defmodule Monitor1 do
  def sad_method do
    sleep 500
    exit(99)
  end

  def run do
    res = Kernel.spawn_monitor(Monitor1, :sad_method, [])
    IO.puts inspect res

    receive do
      msg -> IO.puts "MESSAGE RECEIVED: #{inspect msg}"
    after
      1000 -> IO.puts "Nothing happened as far as I am concered"
    end
  end
end

defmodule Exercise1 do
  def receiver parent do
    send parent, "test"
    raise "test"
  end

  def run do
    spawn_link(Exercise1, :receiver, [self()])

    sleep(500)

    receive do
      msg -> IO.puts inspect msg
    end
  end
end

defmodule Exercise3 do
  def receiver parent do
    send parent, "test"
    raise "Test"
  end

  def run do
    Kernel.spawn_monitor(Exercise3, :receiver, [self()])

    sleep(500)

    receive do
      msg -> IO.puts inspect msg
    end
  end
end
