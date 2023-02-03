defmodule Booksearch.Parser.ParserTest do
  use Booksearch.DataCase
  use ExUnit.Case, async: true
  use Mimic.DSL

  alias Booksearch.Searchs
  alias Booksearch.Response.Parser
  alias Booksearch.Searchs.Search
  alias Support.Fixture.FixtureHelper

  describe "Parse/1" do
    test "Parse a json response " do
      json_response = FixtureHelper.retrieve_fixture("the lord of the rings")
      decoded_response = Jason.decode(json_response)

      assert Parser.parse(decoded_response) =~ "/books/OL9158246M"
    end
  end
end
