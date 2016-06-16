defmodule SaasRealtimeApi.RedisController do
  use SaasRealtimeApi.Web, :controller


  def create(conn, %{"key" => key, "value" => value}) do
    {:ok, client} = Exredis.start_link

    client
    |> Exredis.query(["SET", key, value])
    |>  Exredis.stop

    json conn, %{ message: "success!"}
  end

  def create(conn, params) do
    json conn, %{message: "error!"}
  end
end
