defmodule Rallly6.PollingSystem.Participant do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "participants" do
    field :name, :string
    field :email, :string
    field :user_id, :binary_id
    field :poll_id, :binary_id

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(participant, attrs) do
    participant
    |> cast(attrs, [:name, :email])
    |> validate_required([:name, :email])
  end
end
