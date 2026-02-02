# Starter Prompt: Flask Todo App

Copy and paste this entire block into Claude Code:

```
Create a Flask todo app with the following requirements:

- Single file app.py using Flask
- Store todos in a simple Python list (no database)
- Each todo has an id (int), title (string), and done (boolean)
- Routes:
  - GET / — renders an HTML page showing all todos with a form to add new ones
  - POST /add — adds a new todo and redirects to /
  - POST /toggle/<id> — toggles the done status and redirects to /
  - POST /delete/<id> — deletes a todo and redirects to /
- Templates:
  - templates/base.html — base layout with a <title> and a content block
  - templates/index.html — extends base, shows the todo list and add form
- Static:
  - static/style.css — minimal styling so it doesn't look completely unstyled
- requirements.txt listing flask
- Use if __name__ == '__main__' to run on port 5000 with debug controlled by a DEBUG env variable (default False)
```

After Claude creates the files, run:

```bash
pip install -r requirements.txt
python app.py
```

Open `http://localhost:5000` and try adding, completing, and deleting todos.
