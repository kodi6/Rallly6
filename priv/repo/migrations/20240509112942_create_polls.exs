defmodule Rallly6.Repo.Migrations.CreatePolls do
  use Ecto.Migration

  def change do
    create table(:polls, primary_key: false) do
      add :id, :binary_id, primary_key: true
      add :title, :string
      add :description, :string
      add :location, :string
      add :time_zone, :naive_datetime
      add :is_closed, :boolean, default: false, null: false
      add :is_deleted, :boolean, default: false, null: false
      add :disable_comments, :boolean, default: false, null: false
      add :user_id, references(:users, on_delete: :nothing, type: :binary_id)

      timestamps(type: :utc_datetime)
    end

    create index(:polls, [:user_id])
  end
end
