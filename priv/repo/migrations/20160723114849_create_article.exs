defmodule Chantilly.Repo.Migrations.CreateArticle do
  use Ecto.Migration

  def change do
    create table(:articles) do
      add :source_url, :text
      add :title, :text
      add :content, :text
      add :published_at, :datetime
      add :tags, {:array, :text}

      timestamps()
    end

  end
end
