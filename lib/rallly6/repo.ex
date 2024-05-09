defmodule Rallly6.Repo do
  use Ecto.Repo,
    otp_app: :rallly6,
    adapter: Ecto.Adapters.Postgres
end
