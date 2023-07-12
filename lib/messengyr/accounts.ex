defmodule Messengyr.Accounts do
  import Ecto.Changeset
  alias Messengyr.Repo
  alias Messengyr.User

  def create_user(params) do
    %User{}
    |> cast(params, [:username, :email, :password])
    |> validate_required([:username, :email, :password])
    |> Repo.insert
  end
end
