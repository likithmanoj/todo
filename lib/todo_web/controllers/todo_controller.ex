defmodule TodoWeb.TodoController do
  use TodoWeb, :controller
  alias Todo.Todos

  def index(conn, _params) do
    todos = Todos.list_todos()
    render(conn,"index.html",todos: todos)
  end
  def show(conn, %{"id" => id}) do
    todo = Todos.get_todo!(id)
    render(conn, "show.html",todo: todo)
  end

  def create(conn, %{"todo" => todo_params}) do
    case Todos.create_todo(todo_params) do
      {:ok, todo} ->
        redirect(conn, to: ~p"/todos/#{todo.id}")  # or render a success page

      {:error, changeset} ->
        render(conn, "new.html", changeset: changeset)
    end
  end

  def update(conn, %{"id" => id, "todo" => todo_params}) do
      todo = Todos.get_todo!(id)
      case Todos.update_todo(todo,todo_params) do
      {:ok, todo} ->
        redirect(conn, to: ~p"/todos/#{todo.id}")
      {:error, changeset} -> render(conn, "new.html", changeset: changeset)
  end
end

  def delete(conn, %{"id"=> id}) do
      todo = Todos.get_todo!(id)
      Todos.delete_todo(todo)
      redirect(conn, to: ~p"/todos")
    end

    def new(conn, _params)do
      changeset = Todos.change_todo(%Todos.Todo{})
      render(conn, "new.html", changeset: changeset)
    end
end
