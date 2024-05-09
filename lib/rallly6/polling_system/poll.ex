defmodule Rallly6.PollingSystem.Poll do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "polls" do
    field :description, :string
    field :title, :string
    field :location, :string
    field :time_zone, :naive_datetime
    field :is_closed, :boolean, default: false
    field :is_deleted, :boolean, default: false
    field :disable_comments, :boolean, default: false
    field :user_id, :binary_id

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(poll, attrs) do
    poll
    |> cast(attrs, [:title, :description, :location, :time_zone, :is_closed, :is_deleted, :disable_comments])
    |> validate_required([:title, :description, :location, :time_zone, :is_closed, :is_deleted, :disable_comments])
  end
end
