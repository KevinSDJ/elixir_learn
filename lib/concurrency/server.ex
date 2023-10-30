defmodule Concurrency.Server do
  def run() do
    receive do
      {:ok, data} -> handler(:ok, data)
      {:ok} -> handler(:ok)
      _ -> exit("Server: no data, no work XC")
    end

    run()
  end

  def handler(:ok), do: IO.puts("Server: No data? ok , i going to sleep , zzzz")

  def handler(:ok, data) do
    IO.puts("Server: data received : #{data}")
  end
end
