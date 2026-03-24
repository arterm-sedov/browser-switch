#!/bin/bash
# Browser Switch - Choose between agent-browser and Playwright CLI

TASK="$1"

if [ -z "$TASK" ]; then
    echo "Usage: ./switch.sh \"your task description\""
    echo "Example: ./switch.sh \"automate login form\""
    exit 1
fi

echo "Task: $TASK"
echo ""

# Simple keyword-based decision
if echo "$TASK" | grep -qi "firefox\|safari\|cross.browser\|multiple.browser\|test\|QA"; then
    echo "🎯 RECOMMENDATION: Playwright CLI"
    echo "Reason: Cross-browser testing or formal testing detected"
    echo ""
    echo "Run: cd D:/Repo/playwright-cli && node ./node_modules/playwright/lib/cli/client/program.js open https://example.com"
elif echo "$TASK" | grep -qi "token\|speed\|fast\|AI agent\|efficiency"; then
    echo "🎯 RECOMMENDATION: agent-browser"
    echo "Reason: Token efficiency or speed priority detected"
    echo ""
    echo "Run: cd D:/Repo/agent-browser && npx agent-browser open https://example.com"
else
    echo "🎯 RECOMMENDATION: agent-browser (default for general automation)"
    echo ""
    echo "Run: cd D:/Repo/agent-browser && npx agent-browser open https://example.com"
fi