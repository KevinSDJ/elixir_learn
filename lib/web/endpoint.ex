

defmodule Web.Endpoint do
  use Plug.Router

  plug :match

  plug Plug.Parsers,
       parsers: [:urlencoded,:multipart,:json],
       pass: ["*/*"],
       body_reader: {CacheBodyReader, :read_body, []},
       json_decoder: Poison

  plug :dispatch

  get "/" do
    send_resp put_resp_content_type(conn,"application/json","utf-8"),
              200,
              Poison.encode!(%{msg: "Success"})
  end
  get "/index/" do
    IO.inspect self()
    html= File.read!("./index.html")
    send_resp put_resp_content_type(conn,"text/html","utf-8"),
              200,
              html
  end
  match(_, do: send_resp(conn,404,"Oops!, nothing"))

end
