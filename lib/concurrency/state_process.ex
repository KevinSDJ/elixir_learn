defmodule Concurrency.StateProcess do
  def counter(), do: counter(0)

  def counter(value) do
    new_value =
      receive do
        {:get, pid} ->
          send(pid, value)
          value

        {:inc} ->
          value + 1

        {:dec} ->
          value - 1

        {:reset} ->
          0
      end

    counter(new_value)
  end
end
