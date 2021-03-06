defmodule QaEngine.Repo.Migrations.CreateQuestions do
  use Ecto.Migration

  def change do
    create table(:questions) do
      add :title, :string
      add :body, :text
      add :score, :integer
      add :user_id, references(:users, on_delete: :nothing)

      timestamps()
    end

    create index(:questions, [:user_id])
  end
end
