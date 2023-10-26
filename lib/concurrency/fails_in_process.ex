


defmodule Concurrency.FailsInProcess do

  def calc() do
    receive do
      {:+,pid,x,y} -> send(pid,x+y)
      {:-,pid,x,y} -> send(pid,x-y)
      {:x,pid,x,y} -> send(pid,x*y)
      {:/,_pid,_x,0} -> exit("Error divided by zero")
      {:/,_pid,0,_} -> exit("Error divided by zero")
      {:/,pid,x,y} -> send(pid,x/y)
    end
    calc()
  end
end
