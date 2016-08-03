defmodule Superrentals.RentalView do
  use Superrentals.Web, :view
  use JaSerializer.PhoenixView

  attributes [:title, :owner, :city, :category, :image, :bedrooms]
end
