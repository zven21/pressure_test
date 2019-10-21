defmodule PressureTest.Repo.Migrations.CreatePosts do
  use Ecto.Migration

  def change do
    create table(:posts) do
      add :title, :string
      add :desc, :string

      timestamps()
    end
  end
end
