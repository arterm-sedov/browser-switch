# Browser Switch

A skill to help AI agents choose between **agent-browser** and **Playwright CLI** for browser automation tasks.

## Why This Skill Exists

There are two main CLI tools for browser automation:

- **agent-browser** (Vercel) — Rust-based, ultra-fast, 5.7x more token-efficient
- **Playwright CLI** (Microsoft) — Node.js-based, mature, cross-browser support

Both are excellent. The problem: knowing which one to use for a given task isn't always obvious. This skill provides clear guidance on when to pick which tool.

## Quick Decision

| Need | Use |
|------|-----|
| Max speed & token efficiency | agent-browser |
| Firefox/Safari/Edge support | Playwright CLI |
| AI agent workflows | agent-browser |
| Formal testing | Playwright CLI |

## Installation

For Claude Code, Cursor, OpenCode, etc.:
```bash
npx skills add arterm-sedov/browser-switch
```

Or manually:
```bash
git clone https://github.com/arterm-sedov/browser-switch ~/.agents/skills/browser-switch
```

## Related Repos

- [agent-browser](https://github.com/vercel-labs/agent-browser)
- [playwright-cli](https://github.com/microsoft/playwright-cli)

Both are cloned in D:/Repo for local use.
