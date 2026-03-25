---
name: browser-switch
description: Choose between agent-browser and Playwright CLI for browser automation tasks.
---

# Browser Switch

Choose between agent-browser (Rust) and Playwright CLI (Node.js) for browser automation.

## Quick Choice

**Need max speed & token efficiency?** → agent-browser  
**Need cross-browser or debugging?** → Playwright CLI

## When to Use agent-browser

- Token efficiency matters (5.7x better than Playwright)
- Speed is critical (~100ms per action)
- Chrome-only is acceptable
- AI agent workflows where tokens are limited
- Rust performance preferred

## When to Use Playwright CLI

- Need Firefox, Safari, or Edge testing
- Complex auto-waiting/retry logic required
- Already invested in Playwright ecosystem
- Better debugging and tracing needed
- Formal testing scenarios

## Key Differences

| Feature | agent-browser | Playwright CLI |
|---------|---------------|----------------|
| Language | Rust | Node.js |
| Browser | Chrome only | Chrome, Firefox, Safari |
| Token Usage | ~5.5K chars | ~31K chars |
| Speed | ~100ms/action | ~200-300ms |
| Maturity | New (Vercel) | Mature (Microsoft) |

## Examples

### AI Agent Task (agent-browser)
```bash
agent-browser open example.com
agent-browser snapshot -i
agent-browser click @e2
agent-browser fill @e3 "test@example.com"
```

### Cross-Browser Test (Playwright CLI)
```bash
playwright-cli open https://example.com
playwright-cli snapshot
playwright-cli click e2
playwright-cli fill e3 "test@example.com"
```

## Decision

Use agent-browser unless you specifically need:
- Cross-browser testing
- Advanced debugging features
- Playwright ecosystem compatibility