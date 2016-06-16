defmodule SaasRealtimeApi.RedisController do
  use SaasRealtimeApi.Web, :controller


  def create(conn, %{"key" => key, "value" => value}) do
    {:ok, client} = Exredis.start_link

    client
    |> Exredis.query(["SET", key, value])

    json conn, %{ message: "success!"}
  end
end