defmodule ImplementationsTest do
  use ExUnit.Case
  alias AlgoritmosDeOrdenamiento.QuickSort
  doctest AlgoritmosDeOrdenamiento.QuickSort
  doctest Utils

  test "test recursive reduce" do
    assert Utils.reduce(0, [2, 3, 4, 0, 1]) == 10
  end

  test "Quick Sort implementation " do
    assert QuickSort.sort([10, 1, -4, 20, 8]) == [-4, 1, 8, 10, 20]
  end

  test "Test my own filter" do
    assert Utils.filter([2, 10, 9], fn el -> el == 9 end) |> length() === 1
  end

  test "Test my own filter with for generator" do
    assert Utils.filter_generator([2, 19, -2, 10], &(rem(&1, 2) == 0)) === [2, -2, 10]
  end
end
