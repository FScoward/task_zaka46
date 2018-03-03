defmodule TaskZaka46.Accounts.User do
  use Ecto.Schema
  import Ecto.Changeset
  alias TaskZaka46.Accounts.User


  schema "users" do
    field :user_id, :integer

    timestamps()
  end

  @doc false
  def changeset(%User{} = user, attrs) do
    user
    |> cast(attrs, [:user_id])
    |> validate_required([:user_id])
  end
end
