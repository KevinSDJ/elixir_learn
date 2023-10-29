

defmodule Calculator do

  def reduce(acc,list) do
    if length(list) >=1 do

      reduce(acc+Enum.at(list,0),tl(list))
    else

      acc

    end
  end

  def sum(a,b) do
    :timer.sleep(1_000)
    a+b
  end

end
