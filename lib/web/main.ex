

defmodule Web.Main do
  use Application
  require Logger

  def start(_type,_args) do
    webserver={Plug.Cowboy,plug: Web.Endpoint,scheme: :http,options: [port: 8080]}
    {:ok, _}=Supervisor.start_link([webserver],strategy: :one_for_one)

    Logger.info("Server run on port: 8080")

    Process.sleep(:infinity)
  end
end
