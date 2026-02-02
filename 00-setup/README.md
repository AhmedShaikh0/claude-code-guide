# Chapter 0: Setup

> **What you'll learn:**
> - How to install Claude Code
> - How to configure your Anthropic API key
> - How to verify everything is working

---

## Step 1: Install Node.js

Claude Code is distributed as an npm package. You need Node.js 18+ installed.

Check if you already have it:

```bash
node --version
```

Expected output:

```
v20.11.0    # any version 18+ is fine
```

If you don't have Node.js, install it from [nodejs.org](https://nodejs.org/).

## Step 2: Install Claude Code

```bash
npm install -g @anthropic-ai/claude-code
```

Verify the install:

```bash
claude --version
```

Expected output:

```
claude-code v1.x.x
```

## Step 3: Set your API key

Get an API key from [console.anthropic.com](https://console.anthropic.com/), then set it:

```bash
export ANTHROPIC_API_KEY="sk-ant-..."
```

To make this permanent, add the line to your shell profile (`~/.bashrc`, `~/.zshrc`, etc.).

## Step 4: Verify your setup

Run the verification script included in this folder:

```bash
bash verify.sh
```

Expected output:

```
[OK] Node.js found: v20.11.0
[OK] Claude Code found: claude-code v1.x.x
[OK] ANTHROPIC_API_KEY is set
All checks passed. You're ready to go!
```

## Step 5: First run

Start Claude Code in any directory:

```bash
claude
```

You'll see an interactive prompt. Type something simple to confirm it works:

```
> What is 2 + 2?
```

Claude will respond with an answer. Type `/exit` to quit.

---

**What's next?** Head to [Chapter 1: First Commands](../01-first-commands/) to learn the core things Claude Code can do.
