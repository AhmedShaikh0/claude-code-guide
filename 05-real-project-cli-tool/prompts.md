# Prompts: Building a CLI Bookmark Manager

Use these prompts in order. Paste each one into Claude Code, review the result, then move to the next.

---

## Prompt 1: Storage layer

```
Create a file called storage.py with these functions:

- load_bookmarks() — reads bookmarks from a file called bookmarks.json and returns a list of dicts. Each bookmark has: id (int), url (string), tags (list of strings), created_at (ISO 8601 string). If the file doesn't exist, return an empty list.
- save_bookmarks(bookmarks) — writes the list to bookmarks.json with indent=2.
- get_next_id(bookmarks) — returns 1 if the list is empty, otherwise max id + 1.

Use only the standard library (json, os).
```

## Prompt 2: CLI with argparse

```
Create bm.py — a CLI tool using argparse with these subcommands:

- add <url> --tags tag1,tag2 — adds a bookmark using storage.py functions
- list — prints all bookmarks, numbered, showing URL and tags
- search <query> — prints bookmarks where the query matches any tag or is a substring of the URL
- delete <id> — deletes the bookmark with that id

Import load_bookmarks, save_bookmarks, and get_next_id from storage.py. Use if __name__ == '__main__'.
```

## Prompt 3: Better output formatting

```
Update bm.py so that:
- The list and search commands show bookmarks in this format: "1. https://example.com [docs, reference]"
- If there are no bookmarks, print "No bookmarks found."
- After adding, print "Bookmark saved."
- After deleting, print "Bookmark deleted." or "Bookmark not found." if the id doesn't exist.
```

## Prompt 4: Tests

```
Create test_bm.py with pytest tests for storage.py and bm.py. Cover:
- load_bookmarks returns empty list when file doesn't exist
- save_bookmarks and load_bookmarks round-trip correctly
- Adding a bookmark via the CLI creates an entry in bookmarks.json
- Deleting a bookmark removes it
- Searching by tag returns matching bookmarks
Use tmp_path fixture so tests don't write to the real filesystem.
```

## Prompt 5: Requirements and README

```
Create requirements.txt (just pytest for dev) and a short README.md with:
- One-line description
- Installation: pip install -r requirements.txt
- Usage examples for each subcommand
- How to run tests: pytest test_bm.py -v
```
