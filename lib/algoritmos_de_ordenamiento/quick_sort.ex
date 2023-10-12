
defmodule AlgoritmosDeOrdenamiento.QuickSort do

  def sort([]),do: []

  def sort(list) do

    pivot= Enum.at(list,round(length(list)/2) -1)
    rigth=Enum.filter(list,fn el -> el>pivot end)
    left= Enum.filter(list,fn el -> el<pivot end)

    sort(left) ++[pivot]++ sort(rigth)

  end
end
