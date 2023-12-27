defmodule ShadcnLive.Repo do
  use Ecto.Repo,
    otp_app: :shadcn_live,
    adapter: Ecto.Adapters.Postgres
end
