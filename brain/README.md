# Brain — Canonical Knowledge Base

**Read-only reference material for PM Agent.** Frameworks, benchmarks, and concepts grounded in established product management and revenue architecture sources.

## How the PM Agent uses this

When the PM Agent is reasoning about product strategy, pricing, retention, acquisition, engagement, GTM, or success metrics, it consults the relevant page(s) here and cites as `(brain: <page-name>)`.

The brain is **ground truth for established frameworks**, not a place to log product decisions, meeting notes, or project-specific context.

## Hard rules

- **Read-only.** Agents never write to `brain/`. PRDs, FRDs, user stories, decisions, and memory entries live elsewhere (`docs/prd.md`, `docs/frd/`, `~/.claude/agent-memory/`).
- **Surface disagreement.** When a user's context contradicts the brain, note the delta in the conversation or memory file — do not edit the brain.
- **No project-specific content.** Frameworks here apply across products. Project-specific knowledge goes in the project's own `docs/` or skills.

## Override path

If a project ships its own, richer brain, the PM Agent prefers it. Precedence:

1. `$CLAUDE_BRAIN_PATH` (env var, if set)
2. Project-level `docs/brain/` (if present in the current project)
3. Repo-shipped `brain/` (this directory — fallback)

## Extending the brain

Add a new page when the PM Agent would benefit from it across most products. Before adding, ask:

- Is this a framework or benchmark (keep) or a project-specific observation (put elsewhere)?
- Is the source citable (book, research report, peer-reviewed paper)?
- Would the PM Agent reach for this more than once a quarter?

If yes to all three, add a page and link it from `_index.md`.

## Current pages

See [`_index.md`](_index.md) for the navigation root.
