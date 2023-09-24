defmodule PracticeTest do
  use ExUnit.Case
  doctest Practice
  doctest Calculator
  doctest Utils

  test "greets the world" do
    assert Practice.start() == :ok
  end

  test "test reduce recursivo" do
    assert Calculator.reduce(0,[2,3,4,0,1])== 10
  end

  test "test operador pipe" do
    # la salida de una funcion se lo paso como parametro a otra funcion
    # con el operador pipe
    assert Calculator.escupir("demo") |> String.upcase == "DEMO"
  end
  test "test funcion anonima con atajo : &" do

    sumArray= &(Calculator.reduce(0,&1))
    assert sumArray.([1,3,9,10]) == 23
  end

  test "test funcion anonima normal" do

    sumArray= fn list -> Calculator.reduce(0,list) end
    assert sumArray.([1,3,9,10]) == 23
  end

  test "test list " do
    d= length([2,3,19,20])
    assert d == 4
  end
end
