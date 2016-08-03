defmodule Superrentals.Rental do
  use Superrentals.Web, :model

  schema "rentals" do
    field :title, :string
    field :owner, :string
    field :city, :string
    field :category, :string
    field :image, :string
    field :bedrooms, :integer

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:title, :owner, :city, :category, :image, :bedrooms])
    |> validate_required([:title, :owner, :city, :category, :image, :bedrooms])
  end
end
