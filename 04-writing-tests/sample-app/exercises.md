# Exercises: Writing Tests

Start Claude Code in the `sample-app/` directory for these exercises.

---

## Exercise 1: Generate tests

```
Write pytest tests for app.py. Cover every route: GET /, POST /add, POST /toggle/<id>, POST /delete/<id>, and GET /api/todos. Save to test_app.py.
```

Then run them:

```
Run pytest test_app.py -v and show me the results.
```

**Goal:** All tests pass.

---

## Exercise 2: Add edge case coverage

```
Add tests to test_app.py for these edge cases:
- Adding a todo with an empty title should not create a new todo
- Toggling a non-existent todo id should not crash
- Deleting a non-existent todo id should not crash
- The /api/todos endpoint returns valid JSON with the correct structure
```

**Goal:** All new tests pass alongside the existing ones.

---

## Exercise 3: Use fixtures

```
Refactor test_app.py to use a pytest fixture that resets the todos list to a known state before each test, so tests don't depend on each other's side effects.
```

**Goal:** Tests still pass, and each test starts with a clean todo list.
