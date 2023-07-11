defmodule Messengyr.User do
  use Ecto.Schema
  import Ecto.Changeset

  schema "users" do
    field :email, :string
    field :encrypted_password, :string
    field :username, :string

    timestamps()

    # Unique constraint on field_name
    # unique_constraint("users", [:email, :username])
  end

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, [:username, :email, :encrypted_password])
    |> validate_required([:username, :email, :encrypted_password])
    |> unique_constraint([:email, :username])
  end
end
