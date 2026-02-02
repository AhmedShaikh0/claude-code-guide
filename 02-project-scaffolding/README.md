# Chapter 2: Project Scaffolding

> **What you'll learn:**
> - How to generate a full project from a single prompt
> - What makes a good scaffolding prompt
> - How to iterate on the generated code

---

## The idea

Instead of manually creating files one by one, you can describe an entire project to Claude Code and let it build the structure for you.

## How it works

1. Create an empty directory and start Claude Code inside it:

```bash
mkdir my-todo-app && cd my-todo-app
claude
```

2. Give Claude a detailed prompt describing what you want. See [starter-prompt.md](starter-prompt.md) for a ready-to-use example.

3. Claude will create multiple files — `app.py`, `requirements.txt`, templates, etc. Review each one before approving.

## What makes a good scaffolding prompt?

| Do | Don't |
|---|---|
| Specify the framework (Flask, FastAPI, etc.) | Say "make me a web app" with no details |
| List the features you want | Assume Claude knows your preferences |
| Mention the file structure you expect | Leave the structure entirely up to Claude |
| State the Python version if it matters | Forget about dependencies |

## Example workflow

After running the prompt from `starter-prompt.md`, you'll see output like:

```
I'll create a Flask todo app with the following structure:

my-todo-app/
├── app.py
├── requirements.txt
├── templates/
│   ├── base.html
│   └── index.html
└── static/
    └── style.css

Creating app.py...
```

Claude will create each file and ask for your approval.

## After scaffolding

Install dependencies and run:

```bash
pip install -r requirements.txt
python app.py
```

Then open `http://localhost:5000` in your browser.

## Iterating

Once the base project exists, you can ask Claude to modify it:

```
> Add a "completed" checkbox to each todo item
```

```
> Add a /api/todos JSON endpoint that returns all todos
```

Claude will read the existing files and make targeted edits.

---

**What's next?** Head to [Chapter 3: Working with Existing Code](../03-working-with-existing-code/) to practice fixing bugs in a real codebase.
