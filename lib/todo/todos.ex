defmodule Todo.Todos do
  import Ecto.Query, warn: false
  alias Todo.Repo
  alias Todo.Todos.Todo

    # 1.	list_todos/0 — test in iex (see all)
    # 2.	create_todo/1 — test creating one
    # 3.	get_todo!/1 — test fetching by ID
    # 4.	update_todo/2 — test editing one
    # 5.	delete_todo/1 — test deletion

     def list_todos(), do: Repo.all(Todo)
     def create_todo(attrs \\ %{}) do
      %Todo{}
      |> Todo.changeset(attrs)
      |> Repo.insert()
    end
     def get_todo!(id) do
       Repo.get!(Todo,id)
     end
     def update_todo(%Todo{}= todo, attrs) do
      todo
      |>Todo.changeset(attrs)
      |>Repo.update()
     end
     def delete_todo(%Todo{}= todo) do
       Repo.delete(todo)
     end

end
