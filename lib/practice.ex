defmodule Practice do
  # iex -S mix : to run this module
  # example <Module_Name>.<function_Name>

  def timed(func, args) do
    {time, result} = :timer.tc(func, args)

    IO.puts("Time: #{time}\nResult: ")
    IO.inspect(result)
  end
end
