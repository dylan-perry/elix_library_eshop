defmodule ElixLibraryEshop.Books do
  alias ElixLibraryEshop.Repo
  alias ElixLibraryEshop.Books.Book

  def list_books, do: Repo.all(Book)

  def get_book!(id), do: Repo.get!(Book, id)

  def create_book(attrs \\ %{}) do
    %Book{}
    |> Book.changeset(attrs)
    |> Repo.insert()
  end

  def update_book(%Book{} = book, attrs) do
    book
    |> Book.changeset(attrs)
    |> Repo.update()
  end

  def change_book(%Book{} = book, attrs \\ %{}) do
    Book.changeset(book, attrs)
  end

  def delete_book(%Book{} = book) do
    Repo.delete(book)
  end
end
