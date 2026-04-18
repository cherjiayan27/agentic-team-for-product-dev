# Brain Log — Top-Level Activity

Cross-source events only: source additions, schema changes, macro lint results.
Per-source ingest events live in inner `log.md` files.

Format: `## [YYYY-MM-DD] {event-type} | {subject}`

---

## [2026-04-18] restructure | Vault reorganised to canonical-only brain

Moved `~/Obsidian/revenue-architecture-brain/` → `~/Obsidian/brain/books/revenue-architecture/`. Introduced `books/` and `reports/` as first-level categories. Wrote new canonical-only schema in `CLAUDE.md` (enforces layer separation: only published/validated sources; personal material declined).

Rationale: user's concern that half-baked ideas would pollute the wiki. Solution: strict canonical-only rule + personal thinking lives outside the vault.

## [2026-04-18] source-added | Amplitude Product Benchmark Report 2025

Added `reports/amplitude-product-benchmark-2025/`. Pending ingestion.

## [2026-04-18] global-config | Added brain reference to ~/.claude/CLAUDE.md

Appended a block to user-level Claude Code config so pm-agent and all sessions treat `~/Obsidian/brain/` as read-only canonical reference by default.

## [2026-04-18] ingest-complete | Amplitude Product Benchmark Report 2025

Full ingestion of Amplitude's 2025 Product Benchmark Report. 8 chapters processed. 22 new Amplitude wiki pages created; 3 existing Revenue Architecture pages extended with Amplitude citations ([[Retention]], [[Gross Revenue Retention]], [[Recurring Impact]]).

The first cross-source ingestion worked as designed: Amplitude's empirical benchmarks now extend Jacco's theoretical framework. Queries about retention can cite both sources with proper distinction between revenue-based (Jacco) and user-activity-based (Amplitude) retention.

Brain now holds 2 sources with cross-linked pages. Ready to serve pm-agent queries grounded in both frameworks and empirical data.

## [2026-04-18] cleanup | Removed ~/.claude/CLAUDE.md brain reference

Brain reference is now scoped to pm-agent.md (see `/Users/cherjiayan/Downloads/claude/agentic-team-for-product-dev/agents/pm-agent.md`) instead of firing on every Claude Code session. Cleaner separation: the brain is consulted by pm-agent specifically, not by every interaction.
