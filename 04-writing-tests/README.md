# Chapter 4: Writing Tests

> **What you'll learn:**
> - How to ask Claude Code to write tests for existing code
> - How to run tests and interpret results
> - How to ask for specific kinds of test coverage

---

## The scenario

You've fixed the bugs from Chapter 3. Now you'll use Claude Code to add tests so those bugs don't come back.

The `sample-app/` folder in this chapter contains the **fixed** version of the app. Your job is to use Claude Code to generate tests for it.

## Getting started

```bash
cd sample-app
pip install -r requirements.txt
claude
```

## Writing tests with Claude Code

### Generate a full test file

```
> Write pytest tests for app.py. Cover all routes: GET /, POST /add, POST /toggle/<id>, POST /delete/<id>, and GET /api/todos. Put the tests in test_app.py.
```

Claude will read `app.py`, understand the routes, and create a test file using Flask's test client.

### Run the tests

```
> Run pytest test_app.py -v
```

Expected output:

```
test_app.py::test_index_page PASSED
test_app.py::test_add_todo PASSED
test_app.py::test_toggle_todo PASSED
test_app.py::test_delete_todo PASSED
test_app.py::test_api_todos PASSED
```

### Ask for edge case tests

```
> Add tests for these edge cases: adding a todo with an empty title, toggling a todo that doesn't exist, deleting a todo that doesn't exist.
```

### Ask for a specific testing pattern

```
> Refactor the tests to use a pytest fixture that resets the todo list before each test.
```

## Tips for test prompts

- **Name the test framework.** Say "pytest" or "unittest" — don't make Claude guess.
- **List what to cover.** "Test all routes" is good. "Test the app" is vague.
- **Ask for edge cases separately.** Get the happy path working first, then add edge cases.

---

**What's next?** Head to [Chapter 5: Real Project — CLI Tool](../05-real-project-cli-tool/) to build something from scratch.
