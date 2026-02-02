# Chapter 3: Working with Existing Code

> **What you'll learn:**
> - How to point Claude Code at an existing project
> - How to find and fix bugs using Claude Code
> - How to add features to code you didn't write

---

## The scenario

In the `sample-app/` folder, there's a small Flask todo app — but it has five intentional bugs. Your job is to use Claude Code to find and fix them.

## Getting started

```bash
cd sample-app
pip install -r requirements.txt
python app.py
```

You'll immediately hit the first bug. That's expected.

## How to use Claude Code with existing code

Start Claude Code inside the project directory:

```bash
claude
```

Claude can see all the files in the current directory. Try these approaches:

### Ask Claude to find bugs

```
> Read app.py and look for bugs. List every issue you find.
```

### Ask Claude to fix a specific error

```
> When I run python app.py, I get an ImportError. Fix it.
```

### Ask Claude to explain unfamiliar code

```
> What does the /toggle/<int:todo_id> route do?
```

## The bugs

There are 5 bugs listed in [bugs.md](sample-app/bugs.md) with hints. Try to find them yourself first using Claude Code, then check the hints if you're stuck.

## Adding a feature

Once all bugs are fixed, try adding a feature:

```
> Add a /api/todos endpoint that returns all todos as JSON.
```

Claude will read the existing code, understand the data structure, and add the route in the right place.

---

**What's next?** Head to [Chapter 4: Writing Tests](../04-writing-tests/) to add tests to this app.
