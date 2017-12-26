defmodule LetsTalk.Accounts.User do
  use Ecto.Schema
  import Ecto.Changeset
  alias LetsTalk.Accounts.{User, Credential}


  schema "users" do
    field :bio, :string
    field :first_name, :string
    field :is_admin, :boolean, default: false
    field :last_name, :string
    field :username, :string
    field :image_url, :string
    has_one :credential, Credential

    timestamps()
  end

  @doc false
  def changeset(%User{} = user, attrs) do
    user
    |> cast(attrs, [:first_name, :last_name, :username, :bio, :is_admin])
    |> validate_required([:first_name, :last_name, :username])
    |> unique_constraint(:username)
  end
end
