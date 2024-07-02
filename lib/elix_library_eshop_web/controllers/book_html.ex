defmodule ElixLibraryEshopWeb.BookHTML do
  use ElixLibraryEshopWeb, :html

  embed_templates "/book_html/*"

  alias ElixLibraryEshop.Books.Book

  def book_inserted_at(%Book{inserted_at: timestamp}) do
    Calendar.strftime(timestamp, "%m/%d/%Y %I:%M%p")
  end

end
