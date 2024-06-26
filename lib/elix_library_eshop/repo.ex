defmodule ElixLibraryEshop.Repo do
  use Ecto.Repo,
    otp_app: :elix_library_eshop,
    adapter: Ecto.Adapters.Postgres
end
