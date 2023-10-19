defmodule BasesTest do
  alias Errors.BadRequest
  use ExUnit.Case
  doctest Practice
  doctest Calculator
  doctest Errors.BadRequest

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
    IO.puts "#{day}-#{month}-#{year}, #{h}:#{m}:#{s}"
    assert true

  end

  test "File" do
    {:ok,file}= File.open("README.md")
    try do
      IO.inspect file
    rescue
      e -> IO.puts e
    after
      File.close(file)
    end
    assert true
  end

  test "Test custom error" do
    try do
      if (2*2) == 4 do

        raise BadRequest
        assert true
      else
        assert false
      end
    rescue
      e in BadRequest -> e
    end
  end
end
