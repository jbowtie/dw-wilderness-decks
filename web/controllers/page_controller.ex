defmodule Wilderness.PageController do
  use Wilderness.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
