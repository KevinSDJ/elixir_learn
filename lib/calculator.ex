

defmodule Calculator do

  def reduce(acc,list) do
    if length(list) >=1 do

      reduce(acc+Enum.at(list,0),list--[Enum.at(list,0)])
    else

      acc

    end
  end

  @spec escupir(String) :: String
  def escupir(letra), do: letra

end