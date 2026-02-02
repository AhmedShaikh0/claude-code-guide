# Chapter 1: First Commands

> **What you'll learn:**
> - What Claude Code is and how it differs from the Claude chat interface
> - How to create files, edit code, and explain code using Claude Code
> - The basic commands and workflow

---

## What is Claude Code?

Claude Code is a command-line tool that lets Claude read, write, and run code directly on your machine. Unlike the Claude web chat:

- It can **see your files** — you don't need to paste code into a chat window
- It can **edit files** directly on disk
- It can **run commands** in your terminal (with your permission)
- It works inside your actual project directory

Think of it as a coding assistant that sits in your terminal and works alongside you.

## Starting Claude Code

Open a terminal, navigate to any directory, and type:

```bash
claude
```

You'll see a prompt like this:

```
╭──────────────────────────────────────╮
│ Claude Code                          │
│                                      │
│ /help for help                       │
╰──────────────────────────────────────╯

>
```

Everything you type at this `>` prompt is sent to Claude.

## Core actions

### 1. Create a file

```
> Create a file called hello.py that prints "Hello, world!"
```

Claude will create `hello.py` in your current directory. You'll see the file contents and be asked to approve the write.

### 2. Edit a file

```
> Change hello.py to ask for the user's name and greet them by name
```

Claude reads the existing file, makes the edit, and shows you a diff before applying it.

### 3. Explain code

```
> Explain what hello.py does, line by line
```

Claude reads the file and gives you a plain-English breakdown.

### 4. Run a command

```
> Run python hello.py
```

Claude will ask for permission, then execute the command and show you the output.

## Useful slash commands

| Command | What it does |
|---|---|
| `/help` | Show available commands |
| `/clear` | Clear conversation history |
| `/exit` | Quit Claude Code |

## Tips

- **Be specific.** "Add error handling to the `save_user` function" works better than "make the code better."
- **Reference files by name.** Claude can see your directory, but naming the file helps it focus.
- **Approve or reject.** Claude always asks before writing files or running commands. Read the diff before approving.

---

**What's next?** Head to [Chapter 2: Project Scaffolding](../02-project-scaffolding/) to generate an entire project from a single prompt.
