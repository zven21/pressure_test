defmodule PressureTest.Repo do
  use Ecto.Repo,
    otp_app: :pressure_test,
    adapter: Ecto.Adapters.Postgres
end
