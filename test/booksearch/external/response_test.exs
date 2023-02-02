defmodule BookSearch.External.ResponseTest do
  use Booksearch.DataCase
  use Mimic.DSL

  alias Booksearch.External.Response
  alias Support.Fixture.FixtureHelper

  test "convert json response from api to external response format" do
    response = FixtureHelper.retrieve_fixture("the lord of the rings")
    # todo: Find a better way to test this work
    assert ExternalResponse.convert_json(response) ==
             File.read("lib/support/fixture/fixture_json/lord_of_the _rings.json")
  end
end
