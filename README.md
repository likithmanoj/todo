# 📋 Phoenix Todo App

A basic Todo List web application built using **Phoenix 1.7** (without LiveView) that demonstrates full **CRUD** operations using server-rendered **HEEx templates** and **Ecto**.

---

## 🚀 Getting Started

### ✅ Requirements

- Elixir >= 1.14
- Erlang/OTP >= 25
- PostgreSQL
- Phoenix >= 1.7

---

### 📦 Setup Instructions

```bash
# Get dependencies
mix deps.get

# Create and migrate the database
mix ecto.create
mix ecto.migrate

# Start the Phoenix server
mix phx.server

Now visit http://localhost:4000/todos to use your Todo app.

⸻

🛠 Features
	•	✅ View all todos
	•	➕ Add a new todo
	•	✏️ Edit existing todos
	•	❌ Delete todos
	•	👁 View a specific todo’s details

⸻

📁 Project Structure

File / Directory	Description
lib/todo_web/controllers/todo_controller.ex	Handles web requests and CRUD actions
lib/todo/todos.ex	Context module for todo business logic
lib/todo/todos/todo.ex	Ecto schema and changeset logic
lib/todo_web/templates/todo/*.html.heex	View templates for each action (index, new, show, edit)
lib/todo_web/router.ex	Defines routes like /todos, /newTodo, etc.


⸻

✨ Routes Overview

HTTP Verb	Path	Controller Action	Purpose
GET	/todos	:index	List all todos
GET	/todos/:id	:show	Show todo
POST	/todos	:create	Create todo
PATCH/PUT	/todos/:id	:update	Update todo
DELETE	/todos/:id	:delete	Delete todo
GET	/newTodo	:new	New todo form


⸻

📌 Notes
	•	This app does not use LiveView — it uses traditional server-rendered HTML via .html.heex files.
	•	Styling is applied inline in each template.
	•	You may remove the default Phoenix files like PageController and home.html.heex if not using them.

⸻

🧪 Optional Enhancements
	•	Add input validations and error messages
	•	Improve form UI/UX with CSS frameworks like Tailwind
	•	Add checkboxes for marking tasks as done
	•	Integrate user authentication (phx.gen.auth)

⸻

🧾 License

MIT — free to use, modify, and share.