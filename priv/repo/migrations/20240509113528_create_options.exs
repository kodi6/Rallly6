defmodule Rallly6.Repo.Migrations.CreateOptions do
  use Ecto.Migration

  def change do
    create table(:options, primary_key: false) do
      add :id, :binary_id, primary_key: true
      add :date_time, :naive_datetime
      add :poll_id, references(:polls, on_delete: :nothing, type: :binary_id)

      timestamps(type: :utc_datetime)
    end

    create index(:options, [:poll_id])
  end
end
