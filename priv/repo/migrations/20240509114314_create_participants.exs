defmodule Rallly6.Repo.Migrations.CreateParticipants do
  use Ecto.Migration

  def change do
    create table(:participants, primary_key: false) do
      add :id, :binary_id, primary_key: true
      add :name, :string
      add :email, :string
      add :user_id, references(:users, on_delete: :nothing, type: :binary_id)
      add :poll_id, references(:polls, on_delete: :nothing, type: :binary_id)

      timestamps(type: :utc_datetime)
    end

    create index(:participants, [:user_id])
    create index(:participants, [:poll_id])
  end
end
