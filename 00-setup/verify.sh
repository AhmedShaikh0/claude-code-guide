#!/bin/bash
# Verify that Claude Code is installed and ready to use.

PASS=0
FAIL=0

check() {
    if eval "$2" > /dev/null 2>&1; then
        echo "[OK] $1"
        PASS=$((PASS + 1))
    else
        echo "[FAIL] $1"
        FAIL=$((FAIL + 1))
    fi
}

echo "Checking your Claude Code setup..."
echo ""

# Check Node.js
NODE_VERSION=$(node --version 2>/dev/null)
if [ $? -eq 0 ]; then
    echo "[OK] Node.js found: $NODE_VERSION"
    PASS=$((PASS + 1))
else
    echo "[FAIL] Node.js not found. Install it from https://nodejs.org/"
    FAIL=$((FAIL + 1))
fi

# Check Claude Code
CLAUDE_VERSION=$(claude --version 2>/dev/null)
if [ $? -eq 0 ]; then
    echo "[OK] Claude Code found: $CLAUDE_VERSION"
    PASS=$((PASS + 1))
else
    echo "[FAIL] Claude Code not found. Run: npm install -g @anthropic-ai/claude-code"
    FAIL=$((FAIL + 1))
fi

# Check API key
if [ -n "$ANTHROPIC_API_KEY" ]; then
    echo "[OK] ANTHROPIC_API_KEY is set"
    PASS=$((PASS + 1))
else
    echo "[FAIL] ANTHROPIC_API_KEY is not set. Export it in your shell."
    FAIL=$((FAIL + 1))
fi

echo ""
if [ $FAIL -eq 0 ]; then
    echo "All checks passed. You're ready to go!"
else
    echo "$FAIL check(s) failed. Fix the issues above and run this script again."
    exit 1
fi
