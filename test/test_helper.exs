[Booksearch.Searchs.Search]
|> Enum.each(&Mimic.copy/1)


ExUnit.start()

Ecto.Adapters.SQL.Sandbox.mode(Booksearch.Repo, :manual)
