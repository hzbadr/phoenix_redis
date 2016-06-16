defmodule SaasRealtimeApi do
  use Application

  # See http://elixir-lang.org/docs/stable/elixir/Application.html
  # for more information on OTP Applications
  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    children = [
      # Start the endpoint when the application starts
      supervisor(SaasRealtimeApi.Endpoint, []),
      # Here you could define other workers and supervisors as children
      # worker(SaasRealtimeApi.Worker, [arg1, arg2, arg3]),
      worker(SaasRealtimeApi.RedisRepo, [:redis, "redis://localhost:6379/0"]),
    ]

    # See http://elixir-lang.org/docs/stable/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: SaasRealtimeApi.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  def config_change(changed, _new, removed) do
    SaasRealtimeApi.Endpoint.config_change(changed, removed)
    :ok
  end
end


defmodule SaasRealtimeApi.RedisRepo do
  def start_link(name, uri) do
    client = Exredis.start_using_connection_string(uri)
    true = Process.register(client, name)
    {:ok, client}
  end
end
