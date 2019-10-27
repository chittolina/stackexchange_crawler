defmodule StackexchangeCrawlerWeb.PageController do
  use StackexchangeCrawlerWeb, :controller

  def index(conn, _params) do
    users = StackexchangeCrawler.Repo.all(StackexchangeCrawler.User)
    render(conn, "index.html", users: users)
  end
end
