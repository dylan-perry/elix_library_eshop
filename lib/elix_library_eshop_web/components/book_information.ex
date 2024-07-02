defmodule ElixLibraryEshopWeb.BookInformation do
  # Necessary for creating separate components
  use Phoenix.Component

  # attr/3 allows us to document expected attributes for a component. For example, :books should be a list, and is a required attribute. The third argument, options, can also allow a default value.
  attr :books, :list, required: true
  # This is a function component, which requires an assigns argument somewhere before ~H""".
  # These components will be usable on any book_html page.
  def information(assigns) do
    ~H"""
    <div class="italic mb-4">
      There are <%= length(assigns[:books]) %> books currently available.
    </div>
    """
  end
end
