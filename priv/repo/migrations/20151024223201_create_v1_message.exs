defmodule MessageApi.Repo.Migrations.CreateV1.Message do
  use Ecto.Migration

  def change do
    create table(:messages) do
      add :message, :text
      add :user_id, :integer

      timestamps
    end

  end
end
