defmodule ExternalResponse do
  use Ecto.Schema
  import Ecto.Changeset

  schema "response" do
    field :language, :string
    field :publish_date, :string
    field :publish_year, :integer
    field :seeds, :string
    field :title, :string
    field :author, :string
    field :subject, :string
  end

  def changeset(search, attrs) do
    search
    |> cast(attrs, [:title, :seeds, :publish_date, :publish_year, :language])
    |> validate_required([:title, :seeds, :publish_date, :publish_year, :language])
  end

  def convert_json(response) do
    response
  end
end
