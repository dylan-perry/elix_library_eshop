defmodule ElixLibraryEshopWeb.BookController do
  use ElixLibraryEshopWeb, :controller

  alias ElixLibraryEshop.Repo
  alias ElixLibraryEshop.Books.Book

  def index(conn, _params) do
    books = Repo.all(Book)
    render(conn, :index, books: books)
  end
end
