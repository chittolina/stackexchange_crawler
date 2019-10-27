defmodule StackexchangeCrawler.User do
  use Ecto.Schema

  schema "users" do
    field :user_id, :integer
    field :display_name, :string
    field :profile_image, :string
    field :last_access_date, :date
    field :location, :string
  end
end
