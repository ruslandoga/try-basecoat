defmodule Basecoat.Repo do
  use Ecto.Repo,
    otp_app: :basecoat,
    adapter: Ecto.Adapters.Postgres
end
