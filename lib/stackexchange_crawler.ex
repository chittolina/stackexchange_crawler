defmodule StackexchangeCrawler do
  @moduledoc """
  StackexchangeCrawler contains resources for contacting the StackExchange API for users listing
  """
  use Tesla

  plug(Tesla.Middleware.BaseUrl, "https://api.stackexchange.com/2.2")

  def get_users() do
    {:ok, response} = get("/users?site=stackoverflow")

    :zlib.gunzip(response.body)
    |> Jason.decode!()
    |> Map.get("items")
  end

  def get_and_insert_users() do
    users =
      get_users()
      |> Enum.map(fn user ->
        %{
          user_id: user["user_id"],
          display_name: user["display_name"],
          profile_image: user["profile_image"],
          location: user["location"]
        }
      end)

    StackexchangeCrawler.Repo.insert_all(StackexchangeCrawler.User, users)
  end
end
