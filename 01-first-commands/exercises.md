# Exercises: First Commands

Work through these in order. Run `claude` in an empty directory before starting.

---

## Exercise 1: Create a file

Paste this into Claude Code:

```
Create a Python file called greet.py that defines a function called greet(name) which returns the string "Hello, {name}!" and prints the result of calling it with "World".
```

**Verify:** Run `python greet.py` — you should see `Hello, World!`.

---

## Exercise 2: Edit a file

Paste this:

```
Edit greet.py so the greet function also accepts an optional greeting parameter that defaults to "Hello". For example, greet("World", "Hi") should return "Hi, World!".
```

**Verify:** Open `greet.py` and check that the function signature now has a `greeting` parameter with a default value.

---

## Exercise 3: Explain code

Paste this:

```
Read greet.py and explain what each line does in plain English.
```

**Verify:** Claude should give you a line-by-line explanation without modifying the file.
