# claude-code-guide

**The beginner's hands-on guide to Claude Code — learn by building real projects.**

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg)](CONTRIBUTING.md)
[![Stars](https://img.shields.io/github/stars/AhmedShaikh0/claude-code-guide?style=social)](https://github.com/your-username/claude-code-guide)

---

## Who is this for?

- Developers who know basic Python but have **never used an AI coding agent**
- Anyone curious about Claude Code and wanting to learn by doing
- People who prefer hands-on projects over reading docs

## Prerequisites

- **Python 3.8+** installed on your machine
- An **Anthropic API key** ([get one here](https://console.anthropic.com/))
- A terminal you're comfortable typing commands into
- Basic familiarity with Python (variables, functions, `pip install`)

## Table of Contents

| Chapter | What you'll learn |
|---|---|
| [00 — Setup](00-setup/) | Install Claude Code, configure your API key, verify everything works |
| [01 — First Commands](01-first-commands/) | Run your first prompts — create files, edit code, explain things |
| [02 — Project Scaffolding](02-project-scaffolding/) | Generate a full Flask app from a single prompt |
| [03 — Working with Existing Code](03-working-with-existing-code/) | Fix bugs and add features in a real (intentionally broken) app |
| [04 — Writing Tests](04-writing-tests/) | Ask Claude Code to write and run tests for you |
| [05 — Real Project: CLI Tool](05-real-project-cli-tool/) | Build a complete CLI tool end-to-end using Claude Code |
| [06 — Tips & Pitfalls](06-tips-and-pitfalls/) | Common mistakes, better prompts, and a cheatsheet |

## Quick Start

```bash
# 1. Install Claude Code
npm install -g @anthropic-ai/claude-code

# 2. Set your API key
export ANTHROPIC_API_KEY="your-key-here"

# 3. Clone this repo and verify your setup
git clone https://github.com/your-username/claude-code-guide.git
cd claude-code-guide/00-setup
bash verify.sh
```

Then open [Chapter 00](00-setup/) and follow along.

## How to Use This Repo

Each chapter is a standalone folder. Work through them in order — each one builds on skills from the previous chapter. Every chapter takes under 10 minutes to read and includes exercises you run in your own terminal.

## Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md) for how to add chapters or fix issues.

## License

[MIT](LICENSE)
