defmodule StackexchangeCrawlerWeb.PageController do
  use StackexchangeCrawlerWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
