
defmodule Executable.One do

  # to build a  script
  # mix escript.build
  # after
  # execute file args

  def main(args \\ []), do: IO.inspect args
end
