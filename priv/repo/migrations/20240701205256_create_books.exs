defmodule ElixLibraryEshop.Repo.Migrations.CreateBooks do
  use Ecto.Migration

  def change do
    create table(:books) do
      add :title, :string, null: false
      add :content, :text

      timestamps(type: :utc_datetime)
    end
  end
end
