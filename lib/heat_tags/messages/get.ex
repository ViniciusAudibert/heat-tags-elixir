defmodule HeatTags.Messages.Get do
  import Ecto.Query

  alias HeatTags.{Message, Repo}

  def today_messages do
    today = Date.utc_today()
    query = from message in Message, where: type(message.inserted_at, :date) == ^today

    Repo.all(query)
  end

  # defp handle_insert({:ok, %Message{}} = result), do: result
  # defp handle_insert({:error, result}), do: {:error, %{result: result, status: :bad_request}}
end
