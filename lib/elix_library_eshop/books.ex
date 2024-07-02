defmodule ElixLibraryEshop.Books do
  alias ElixLibraryEshop.Repo
  alias ElixLibraryEshop.Books.Book

  def list_books, do: Repo.all(Book)

  def get_book!(id), do: Repo.get!(Book, id)
end
