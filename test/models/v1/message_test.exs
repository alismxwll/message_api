defmodule MessageApi.V1.MessageTest do
  use MessageApi.ModelCase

  alias MessageApi.V1.Message

  @valid_attrs %{message: "some content", user_id: 42}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Message.changeset(%Message{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Message.changeset(%Message{}, @invalid_attrs)
    refute changeset.valid?
  end
end
