defmodule Todo.Todos.Todo do
  use Ecto.Schema
  import Ecto.Changeset

  schema "todos" do
    field :title, :string
    field :description, :string
    field :done, :boolean, default: false
    timestamps()
  end

  def changeset(todo, params \\ %{}) do
    todo|>cast(params,[:title,:description,:done])
    |>validate_required([:title])
  end
end
