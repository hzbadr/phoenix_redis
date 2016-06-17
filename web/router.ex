defmodule SaasRealtimeApi.Router do
  use SaasRealtimeApi.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", SaasRealtimeApi do
    pipe_through :api

    resources "/redis", RedisController
  end
end
