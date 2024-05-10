defmodule Rallly6.PollingSystem.Option do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "options" do
    field :date_time, :naive_datetime
    field :poll_id, :binary_id

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(option, attrs) do
    option
    |> cast(attrs, [:date_time])
    |> validate_required([:date_time])
  end
end
