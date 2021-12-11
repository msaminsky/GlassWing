defmodule Glasswing.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      Glasswing.Repo,
      # Start the Telemetry supervisor
      GlasswingWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: Glasswing.PubSub},
      # Start the Endpoint (http/https)
      GlasswingWeb.Endpoint
      # Start a worker by calling: Glasswing.Worker.start_link(arg)
      # {Glasswing.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Glasswing.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    GlasswingWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
