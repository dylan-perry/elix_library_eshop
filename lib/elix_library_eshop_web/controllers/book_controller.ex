defmodule ElixLibraryEshopWeb.BookController do
  use ElixLibraryEshopWeb, :controller

  # Aliasing Books context module
  alias ElixLibraryEshop.Books
  alias ElixLibraryEshop.Books.Book

  def index(conn, _params) do
    books = Books.list_books
    render(conn, :index, books: books)
  end

  def show(conn, %{"id" => id}) do
    book = Books.get_book!(id)
    render(conn, :show, book: book)
  end

  def new(conn, _params) do
    changeset = Books.change_book(%Book{})
    render(conn, :new, changeset: changeset)
  end

  def create(conn, %{"book" => book_params}) do
    case Books.create_book(book_params) do
      {:ok, book} ->
        conn
        |> put_flash(:info, "Book created successfully.")
        |> redirect(to: ~p"/books/#{book}")

      {:error, %Ecto.Changeset{} = changeset} ->
        render(conn, :new, changeset: changeset)
    end
  end
end
