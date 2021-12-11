defmodule GlasswingWeb.PageController do
  use GlasswingWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
