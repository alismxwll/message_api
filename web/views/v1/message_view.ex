defmodule MessageApi.V1.MessageView do
  use MessageApi.Web, :view

  def render("index.json", %{messages: messages}) do
    %{data: render_many(messages, MessageApi.V1.MessageView, "message.json")}
  end

  def render("show.json", %{message: message}) do
    %{data: render_one(message, MessageApi.V1.MessageView, "message.json")}
  end

  def render("message.json", %{message: message}) do
    %{id: message.id,
      message: message.message,
      user_id: message.user_id}
  end
end
