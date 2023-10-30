

defmodule Web.App do
  import Plug.Conn


  def init(options), do: options

  def call(conn,_) do
    conn |> put_resp_content_type("text/plain")
    |> send_resp(200,"ok papi")
  end
end
