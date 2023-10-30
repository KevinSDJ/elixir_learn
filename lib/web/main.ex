

defmodule Web.Main do
  use Application
  require Logger

  def start(_type,_args) do
    children=[
      Plug.Adapters.Cowboy.child_spec(:http,Web.Router,[],port: 8080)
    ]
    Logger.info("Server run on port: 8080")
    Supervisor.start_link(children,strategy: :one_for_one)
  end
end
