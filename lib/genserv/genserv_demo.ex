
defmodule Genserv.GenservDemo do

  use GenServer

  def start_link(state \\ []) do
    GenServer.start_link(__MODULE__,state,name: __MODULE__)
  end

  @impl true
  def init(state), do: {:ok,state}
  
end
