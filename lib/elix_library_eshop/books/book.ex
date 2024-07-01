defmodule ElixLibraryEshop.Books.Book do
  use Ecto.Schema
  import Ecto.Changeset

  schema "books" do
    field :title, :string
    field :content, :string

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(book, attrs) do
    book
    |> cast(attrs, [:title, :content])
    |> validate_required([:title, :content])
  end
end
