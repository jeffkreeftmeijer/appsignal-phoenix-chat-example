defmodule PhoenixChatExampleWeb.PageController do
  use PhoenixChatExampleWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
