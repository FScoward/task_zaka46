defmodule TaskZaka46.Repo.Migrations.CreateUsers do
  use Ecto.Migration

  def change do
    create table(:users, primary_key: false) do
      add :user_id, :bigserial, primary_key: true

      timestamps()
    end

  end
end
