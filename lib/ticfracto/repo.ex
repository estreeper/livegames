defmodule Ticfracto.Repo do
  use Ecto.Repo,
    otp_app: :ticfracto,
    adapter: Ecto.Adapters.Postgres
end
