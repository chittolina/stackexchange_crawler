defmodule StackexchangeCrawler.Repo.Migrations.AddUsersTable do
  use Ecto.Migration

  def change do
    create table("users") do
      add :user_id, :integer
      add :display_name, :string, size: 100
      add :profile_image, :string, size: 200
      add :last_access_date, :date

      timestamps()
    end
  end
end
