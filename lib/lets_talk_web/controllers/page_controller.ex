defmodule LetsTalkWeb.PageController do
  use LetsTalkWeb, :controller

  def index(conn, _params) do
    conn
    |> render("index.html")
  end
end
