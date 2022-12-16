defmodule Support.Fixture.FixtureHelper do
 @moduledoc """
 Responible for generating fixtures for testing purposes
 """

  def retrieve_fixture("the lord of the rings") do
    IO.inspect "here"
    File.read("lib/support/fixture/fixture_json/lord_of_the _rings.json")
  end


  def retrieve_sample() do
    file = "test/fixtures/sample.json"

    case File.read(file) do
      {:ok, file} -> {:ok, file}
      {:error, _} -> raise "Could not load fixture -> Sample.json"
    end
  end
end
