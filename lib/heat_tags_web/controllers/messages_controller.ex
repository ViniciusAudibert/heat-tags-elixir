defmodule HeatTagsWeb.MessagesController do
  use HeatTagsWeb, :controller

  def create(conn, params) do
    IO.inspect(params)

    conn
    |> text("RECEBI A MENSAGEM")
  end
end
