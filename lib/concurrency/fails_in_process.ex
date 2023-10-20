


defmodule Concurrency.FailsInProcess do

  def calc() do
    receive do
      {:+,pid,x,y} -> send(pid,x+y)
      {:-,pid,x,y} -> send(pid,x-y)
      {:x,pid,x,y} -> send(pid,x*y)
      {:/,pid,x,y} -> send(pid,x/y)
      _-> exit("")
    end
    calc()
  end
end
