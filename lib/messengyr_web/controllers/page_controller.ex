defmodule MessengyrWeb.PageController do
  use MessengyrWeb, :controller

  def home(conn, _params) do
    # The home page is often custom made,
    # so skip the default app layout.
    render(conn, :home, layout: false)
  end

  def say_hello(conn, _params) do
    text conn, "Hello!"
  end
end
