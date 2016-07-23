defmodule Chantilly.PageController do
  use Chantilly.Web, :controller

  alias Chantilly.Article

  def index(conn, _params) do
    articles = Repo.all(Article)

    render(conn, "index.html", articles: articles)
  end
end
