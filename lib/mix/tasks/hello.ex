defmodule Mix.Tasks.Hello do
  @doc """
   un pequeño ejemplo de tareas personalizadas con mix
  """

  @moduledoc "The mix task: `mix help hello`"
  use Mix.Task

  def run(_) do
    Hello.say()
  end
end
