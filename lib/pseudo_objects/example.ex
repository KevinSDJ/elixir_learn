defmodule PseudoObjects.Example do
  alias __MODULE__
  defstruct name: nil, age: 0

  @spec new(charlist(), integer()) :: %Example{age: charlist(), name: integer()}
  def new(name, age) do
    %Example{name: name, age: age}
  end

  @spec new() :: %Example{age: 0, name: nil}
  def new() do
    %Example{}
  end
end
