defmodule SaasRealtimeApi.RedisController do
  use SaasRealtimeApi.Web, :controller


  def create(conn, %{"key" => key, "value" => value}) do
    Exredis.query(:redis, ["SET", key, value])

    json conn, %{ message: "success!"}
  end

  def create(conn, params) do
    json conn, %{message: "error!"}
  end
end
