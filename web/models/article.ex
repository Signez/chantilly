defmodule Chantilly.Article do
  use Chantilly.Web, :model

  schema "articles" do
    field :source_url, :string
    field :title, :string
    field :content, :string
    field :published_at, Ecto.DateTime
    field :tags, {:array, :string}

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, raw_params \\ %{}) do
    params = raw_params
    |> split_tags()

    struct
    |> cast(params, [:source_url, :title, :content, :published_at, :tags])
    |> validate_required([:source_url, :title, :content, :published_at, :tags])
  end

  def edition_changeset(%Chantilly.Article{:tags => tags} = article, raw_params \\ %{}) do
    IO.inspect(tags)
    if is_list(tags) do
      changeset(%Chantilly.Article{article | :tags => Enum.join(tags, " ")}, raw_params)
    else
      changeset(article, raw_params)
    end
  end

  defp split_tags(%{"tags" => tags} = params) do
    %{params | "tags" => String.split(tags, " ")}
  end

  defp split_tags(params) do
    params
  end
end
