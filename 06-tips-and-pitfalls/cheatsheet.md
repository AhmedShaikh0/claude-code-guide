# Claude Code Cheatsheet

## Starting and stopping

| Action | Command |
|---|---|
| Start Claude Code | `claude` |
| Start in a specific directory | `cd my-project && claude` |
| Exit | `/exit` |
| Clear conversation | `/clear` |
| Get help | `/help` |

## Common prompts

### Create files

```
Create a Python file called app.py with a Flask app that has a single GET / route returning "Hello".
```

### Edit files

```
In app.py, add a POST /submit route that accepts JSON with a "name" field and returns a greeting.
```

### Fix bugs

```
When I run python app.py, I get "ImportError: cannot import name 'jsonify'". Fix it.
```

### Explain code

```
Read app.py and explain the toggle_todo function in plain English.
```

### Write tests

```
Write pytest tests for all routes in app.py. Save to test_app.py.
```

### Run commands

```
Run pytest test_app.py -v and show me the results.
```

### Scaffold a project

```
Create a Flask app with the following structure: app.py, requirements.txt, templates/index.html. The app should display a list of items from a Python list and have a form to add new items.
```

## Prompt tips

- **Be specific** — name the file, function, and what you want changed
- **Include errors** — paste the full error message
- **One thing at a time** — focused prompts get better results
- **Name the tools** — say "pytest" not "tests", "Flask" not "web framework"
- **Review diffs** — always read what Claude is changing before approving
