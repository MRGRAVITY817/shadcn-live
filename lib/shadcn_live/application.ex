defmodule ShadcnLive.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Telemetry supervisor
      ShadcnLiveWeb.Telemetry,
      # Start the Ecto repository
      ShadcnLive.Repo,
      # Start the PubSub system
      {Phoenix.PubSub, name: ShadcnLive.PubSub},
      # Start Finch
      {Finch, name: ShadcnLive.Finch},
      # Start the Endpoint (http/https)
      ShadcnLiveWeb.Endpoint
      # Start a worker by calling: ShadcnLive.Worker.start_link(arg)
      # {ShadcnLive.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: ShadcnLive.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    ShadcnLiveWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end