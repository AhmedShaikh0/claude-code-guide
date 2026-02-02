# Bugs in sample-app

There are 5 intentional bugs in `app.py`. Try to find them using Claude Code before reading the hints.

---

## Bug 1: ImportError on startup

**Symptom:** The app crashes when you try to use the `/api/todos` endpoint.

<details>
<summary>Hint</summary>
Look at the imports at the top of the file. Is everything that's used actually imported?
</details>

---

## Bug 2: 500 error when toggling a todo

**Symptom:** Clicking the toggle button causes a server error.

<details>
<summary>Hint</summary>
Look carefully at the variable names in the toggle_todo function. Is there a typo?
</details>

---

## Bug 3: App runs on import

**Symptom:** The app starts running even when you import it (e.g., in tests). There's no `if __name__` guard.

<details>
<summary>Hint</summary>
The `app.run()` call at the bottom isn't wrapped in `if __name__ == '__main__'`.
</details>

---

## Bug 4: Can't delete the last todo

**Symptom:** If the todo you want to delete is the last item in the list, nothing happens.

<details>
<summary>Hint</summary>
Look at the `range()` call in `delete_todo`. What's the upper bound?
</details>

---

## Bug 5: Debug mode is always on

**Symptom:** Not a crash, but a security issue — `debug=True` is hardcoded.

<details>
<summary>Hint</summary>
The `debug` flag should come from an environment variable, not be hardcoded to `True`.
</details>
