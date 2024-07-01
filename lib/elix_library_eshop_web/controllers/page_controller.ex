defmodule ElixLibraryEshopWeb.PageController do
  use ElixLibraryEshopWeb, :controller

  def home(conn, _params) do
    # The home page is often custom made,
    # so skip the default app layout.
    render(conn, :home, layout: false)
  end

  def about(conn, _params) do

    # Multi-assign, Option 1: chained pipes
    conn = conn
          |> assign(:message, "This string was passed with a controller variable.")
          |> assign(:other_message, "Other message")

    # # Multi-assign, Option 2: merge_assigns function
    # conn = merge_assigns(conn, message: "First message.", other_message: "Other message.")

    # # Multi-assign, Option 3: pass keyword list directly to render function
    # render(conn, :about, message: "Rendered first message.", other_message: "Rendered other message.")

    # Standard render response
    render(conn, :about)
  end
end
