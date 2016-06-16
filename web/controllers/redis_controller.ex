defmodule SaasRealtimeApi.RedisController do
  require Logger

  use SaasRealtimeApi.Web, :controller


  def create(conn, %{"key" => key, "value" => value}) do
    {:ok, client} = Exredis.start_link

    client
    |> Exredis.query(["SET", key, value])

    json conn, %{ message: "success!"}
  end

  def create(conn, params) do
    Logger.debug params
    json conn ${message: "error!"}
  end
end