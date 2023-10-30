defmodule Practice.MixProject do

  use Mix.Project

  def project do
    [
      app: :practice,
      version: "0.1.0",
      elixir: "~> 1.15",
      erlc_paths: ["lib"],
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      escript: escript()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:cowboy, :plug, :logger],
      mod: {Web.Main,[]}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:plug, "~>1.3.4"},
      {:cowboy, "~>1.1.2"}
      # {:dep_from_hexpm, "~> 1.1.0"}
    ]
  end

  defp escript() do
    [main_module: Executable.One]
  end
end
