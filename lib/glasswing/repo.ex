defmodule Glasswing.Repo do
  use Ecto.Repo,
    otp_app: :glasswing,
    adapter: Ecto.Adapters.Postgres
end
