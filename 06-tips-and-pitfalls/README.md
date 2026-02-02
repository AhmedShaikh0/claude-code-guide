# Chapter 6: Tips & Pitfalls

> **What you'll learn:**
> - Common mistakes beginners make with Claude Code
> - How to write better prompts
> - When Claude Code is (and isn't) the right tool

---

## Common mistakes

### 1. Prompts that are too vague

**Bad:** "Make the code better."

**Good:** "Add input validation to the `add_todo` function so it rejects empty strings."

Claude works best when you're specific about what you want changed and where.

### 2. Not reading the diff

Claude shows you what it's about to change. Always read the diff before approving. Look for:

- Unintended deletions
- Changes to files you didn't ask about
- Hardcoded values that should be configurable

### 3. One giant prompt

A 500-word prompt asking for an entire app rarely works well on the first try. Instead:

1. Start with the core structure
2. Add features one at a time
3. Test after each change

### 4. Not giving context

If you're fixing a bug, tell Claude what the error message is:

```
> When I run python app.py and visit /toggle/1, I get a NameError: name 'tood' is not defined. Fix it.
```

This is much more useful than "the toggle route is broken."

### 5. Forgetting it can run commands

Claude Code isn't just an editor. You can ask it to:

- Run tests and fix failures
- Install dependencies
- Check git status and make commits
- Run linters

## When NOT to use Claude Code

- **Security-critical code** — always review auth, encryption, and access control yourself
- **Performance-sensitive hot paths** — Claude writes correct code, but not always optimal code
- **When you don't understand what it's doing** — if you can't review the diff, don't approve it

## Writing better prompts

| Technique | Example |
|---|---|
| Name the file | "In `app.py`, change the `/add` route to..." |
| Include error messages | "I get `TypeError: 'NoneType'` when I call..." |
| Specify the framework | "Using pytest, write tests for..." |
| State constraints | "Don't add any new dependencies" |
| Ask for one thing at a time | "First, add the route. Then I'll ask for tests." |

## Quick reference

See [cheatsheet.md](cheatsheet.md) for a one-page reference.

---

You've completed the guide. Go build something.
