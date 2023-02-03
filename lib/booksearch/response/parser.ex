defmodule Booksearch.Response.Parser do
@moduledoc """
Responible for parsing of the response received from api calls
"""

  def parse(response) do

    # pull_seed_from_response(response)
  end




  # def pull_seed_from_response({"numFound": num}) do
  #   num
  # end

  def convert_json(response) do
  
    Jason.decode(response)
  end
end
