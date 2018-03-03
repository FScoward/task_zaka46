defmodule TaskZaka46Web.PageController do
  use TaskZaka46Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
