# Chapter 5: Real Project — Build a CLI Tool

> **What you'll learn:**
> - How to build a complete project from scratch using Claude Code
> - How to break a project into a sequence of prompts
> - How to iterate and refine with follow-up prompts

---

## What we're building

A command-line **bookmark manager** called `bm` that lets you:

- Save URLs with tags
- List and search bookmarks
- Delete bookmarks
- Store everything in a local JSON file

## The approach

Instead of one giant prompt, we'll build this in stages. Each prompt in [prompts.md](prompts.md) handles one piece. This is how real Claude Code workflows look — small, focused prompts that build on each other.

## Getting started

```bash
mkdir bookmark-manager && cd bookmark-manager
claude
```

Then follow the prompts in [prompts.md](prompts.md) one at a time. After each prompt, review what Claude created and make sure it works before moving to the next.

## Expected result

After all prompts, you'll have:

```
bookmark-manager/
├── bm.py            # Main CLI script
├── storage.py       # JSON file read/write
├── requirements.txt
├── test_bm.py       # Tests
└── README.md        # Auto-generated docs
```

Usage will look like:

```bash
$ python bm.py add https://example.com --tags docs,reference
Bookmark saved.

$ python bm.py list
1. https://example.com [docs, reference]

$ python bm.py search docs
1. https://example.com [docs, reference]

$ python bm.py delete 1
Bookmark deleted.
```

## Why this sequence works

Each prompt is scoped to one responsibility. Claude does better with focused requests than with a single massive prompt. The prompts also reference previous files ("Read `storage.py` and ..."), which anchors Claude in the existing code.

---

**What's next?** Head to [Chapter 6: Tips & Pitfalls](../06-tips-and-pitfalls/) for common mistakes and a quick-reference cheatsheet.
