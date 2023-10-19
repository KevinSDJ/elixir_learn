
defmodule Concurrency.Worker do
  def run()do
    receive do
      {pid,data} -> process(pid,data)
      {pid} -> process(pid)
      _-> exit("agent: my existence has no purpose")
    end
  end

  def process(pid), do: send(pid,{:ok})
  def process(pid,data) do
    IO.puts "agent: send command to server pid :\n"
    IO.inspect pid
    send(pid,{:ok,data})
  end
end
