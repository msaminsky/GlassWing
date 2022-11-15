defmodule GlasswingWeb.MapController do
  use GlasswingWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end

  def show(conn, %{"view" => view}) do
    render(conn, "show.html", view: view)
  end
end
