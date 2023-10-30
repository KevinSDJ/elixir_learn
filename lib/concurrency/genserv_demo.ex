defmodule Concurrency.GenservDemo do
  use GenServer

  def start_link(state \\ []) do
    GenServer.start(__MODULE__, state, name: __MODULE__)
  end

  def init(state), do: {:ok, state}
end
