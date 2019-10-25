defmodule StackexchangeCrawler.Repo do
  use Ecto.Repo,
    otp_app: :stackexchange_crawler,
    adapter: Ecto.Adapters.Postgres
end
