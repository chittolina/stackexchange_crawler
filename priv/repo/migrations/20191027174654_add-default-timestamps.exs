defmodule :"Elixir.StackexchangeCrawler.Repo.Migrations.Add-default-timestamps" do
  use Ecto.Migration

  def change do
    alter table("users") do
      modify(:inserted_at, :timestamp, default: fragment("now()"))
      modify(:updated_at, :timestamp, default: fragment("now()"))
    end
  end
end
