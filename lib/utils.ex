defmodule Utils do
  require Logger
  def lenght([]), do: 0

  def lenght([_ | tail]), do: 1 + lenght(tail)

  @doc """
     hd ( head) se utiliza para obtener el primer elemento de una colleccion
     tail ( cola ) se utilza para obtener los elementos restantes a hd ,
     | para cortar una colleccion
     listas con palabras claves [clave: valor]
  """

  @spec print([...]) :: :ok
  def print(arg) do
    [_ | tail] = arg
    IO.puts(Enum.at(tail, lenght(tail) - 1))
  end

  @doc """
    mapas = %{clave => valor}
  """

  @spec map(any, any) :: map
  def map(key, value), do: %{key => value}

  def reduce(acc, list) do
    if length(list) >= 1 do
      reduce(acc + Enum.at(list, 0), tl(list))
    else
      acc
    end
  end

  def filter([], _), do: []

  def filter(list, fun) do
    [hd | tl] = list

    if fun.(hd) do
      [hd | filter(tl, fun)]
    else
      [] ++ filter(tl, fun)
    end
  end

  def filter_generator([], _fun), do: []

  def filter_generator(list, fun) do
    for x <- list, fun.(x), do: x
  end

  def d(d) when d > 0, do: d
end
