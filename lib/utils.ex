
defmodule Utils do

  def lenght([]),do: 0

  def lenght([_|tail]), do: 1 + lenght(tail)


  @doc """
     hd ( head) se utiliza para obtener el primer elemento de una colleccion
     tail ( cola ) se utilza para obtener los elementos restantes a hd ,
     | para cortar una colleccion
     listas con palabras claves [clave: valor]
  """

  @spec print([...]) :: :ok
  def print(arg) do
    [_|tail]=arg
    IO.puts(Enum.at(tail,lenght(tail)-1))
  end


  @doc """
    mapas = %{clave => valor}
  """

  @spec map(any, any) :: map
  def map(key,value),do: %{key=> value}

end
