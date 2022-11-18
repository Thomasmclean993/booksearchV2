defmodule Support.Fixture.FixtureHelper do
  # def retrieve_lotr() do
  #   file = "support/fixtures/lord_of_the_rings.json"
  #   case File.read(file) do
  #     {:ok, file} -> file
  #     {:error, _} -> raise "Could not load fixture -> Lord of the rings"
  #   end
  # end

  def retrieve_lotr(_string) do
    File.read("support/fixture/lord_of_the_rings.json")
  end

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
