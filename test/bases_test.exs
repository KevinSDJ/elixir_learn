defmodule BasesTest do
  use ExUnit.Case
  doctest Practice
  doctest Calculator

  test "greets the world" do
    assert Practice.start() == :ok
  end

  test "test pipe operator" do
    # la salida de una funcion se lo paso como parametro a otra funcion
    # con el operador pipe
    assert "demo" |> String.upcase == "DEMO"
  end
  test "test funcion anonima con atajo : &" do

    sum= &(&1+4)
    assert sum.(4)==8
  end

  test "test anonymus function normal" do

    sum= fn value -> value + 20 end
    assert sum.(10)==30
  end

  test "test sigilo " do

    e = ~r/oasd,asdsa/

    assert "oasd,asdsa"=~ e
  end

  test "test date in elixir" do
    {{year,month,day},{h,m,s}}= :calendar.local_time()

    assert true

  end
end
