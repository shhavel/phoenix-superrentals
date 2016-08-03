defmodule Superrentals.RentalController do
  use Superrentals.Web, :controller

  alias Superrentals.Rental

  def index(conn, _params) do
    rentals = Repo.all(Rental)
    render(conn, "index.json-api", data: rentals)
  end

  def create(conn, %{"data" => %{"attributes" => rental_params}}) do
    changeset = Rental.changeset(%Rental{}, rental_params)

    case Repo.insert(changeset) do
      {:ok, rental} ->
        conn
        |> put_status(:created)
        |> put_resp_header("location", rental_path(conn, :show, rental))
        |> render("show.json-api", data: rental)
      {:error, changeset} ->
        conn
        |> put_status(:unprocessable_entity)
        |> render(Superrentals.ChangesetView, "error.json", changeset: changeset)
    end
  end

  def show(conn, %{"id" => id}) do
    rental = Repo.get!(Rental, id)
    render(conn, "show.json-api", data: rental)
  end

  def update(conn, %{"id" => id, "data" => %{"attributes" => rental_params}}) do
    rental = Repo.get!(Rental, id)
    changeset = Rental.changeset(rental, rental_params)

    case Repo.update(changeset) do
      {:ok, rental} ->
        render(conn, "show.json-api", data: rental)
      {:error, changeset} ->
        conn
        |> put_status(:unprocessable_entity)
        |> render(Superrentals.ChangesetView, "error.json", changeset: changeset)
    end
  end

  def delete(conn, %{"id" => id}) do
    rental = Repo.get!(Rental, id)

    # Here we use delete! (with a bang) because we expect
    # it to always work (and if it does not, it will raise).
    Repo.delete!(rental)

    send_resp(conn, :no_content, "")
  end
end
