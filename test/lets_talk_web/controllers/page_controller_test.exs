defmodule LetsTalkWeb.PageControllerTest do
  use LetsTalkWeb.ConnCase

  test "GET /", %{conn: conn} do
    conn = get conn, "/"
    assert html_response(conn, 200) =~ "Please Log In"
  end
end
