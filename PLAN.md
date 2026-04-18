# PLAN — Context7 On-Demand Framework Docs

**Branch:** `refactor/context7-on-demand-framework-docs`
**Baseline tag:** `pre-context7-refactor`
**Full plan spec:** `~/.claude/plans/jazzy-finding-lamport.md`

Replace bundled framework-specific skills with on-demand queries to Context7 (`https://context7.com/websites/<slug>`). Repo shrinks, framework docs stay fresh, offline is lost for niche stacks.

## Hybrid fallback order (all dev/QA/review agents)

1. Detect conventions from existing project codebase (primary)
2. Query Context7 at `context7.com/websites/<slug>` (secondary)
3. Use stack's idiomatic defaults, flag in PR (tertiary)

## Locked decisions

- URL convention: `websites/<slug>` (confirmed against working example `platform_claude_en`)
- Build resolver agents (3 files): delete
- Frontend fallback: keep React, Vue, Angular inline; drop Next, Nuxt, Svelte, SolidJS, Remix inline
- WebFetch scope: backend-dev, frontend-dev, qa-tester, code-reviewer (all four)

## Phases

| # | Phase | Scope | Rollback |
|---|---|---|---|
| 0 | Branch + baseline | Branch, tag, this plan | `git checkout main` |
| 1 | WebFetch tools | Add `WebFetch` to 4 agents' `tools:` line | `git restore agents/*.md` |
| 2 | Backend router rewrite | Strip framework rows + add Context7 workflow | `git restore skills/backend-engineering/SKILL.md` |
| 3 | Delete bundled skills | Remove `backend-frameworks/`, `nestjs-patterns/`, `jpa-patterns/`, `kotlin-exposed-patterns/` | `git revert <commit>` |
| 4 | backend-dev.md Step 2 | Point agent at new router workflow | `git restore agents/backend-dev.md` |
| 5 | Frontend router rewrite | Replace 5 inline framework rows with Context7; keep React/Vue/Angular inline | `git restore skills/frontend-engineering/SKILL.md` |
| 6 | frontend-dev.md Step 2 | Point agent at new router workflow | `git restore agents/frontend-dev.md` |
| 7 | qa-tester + code-reviewer | Add Context7 guidance under Step 1 + Lens 2/5 | `git restore agents/qa-tester.md agents/code-reviewer.md` |
| 8 | Docs sync | PIPELINE.md + README.md wording shift | `git restore PIPELINE.md README.md` |
| 9 | Merge | Squash to main (actually `--no-ff`) | `git revert <merge>` |

## Critical files

**Edit:** 4 agents (backend-dev, frontend-dev, qa-tester, code-reviewer), 2 routers (backend-engineering, frontend-engineering), 2 docs (PIPELINE, README)

**Delete:** `skills/backend-engineering/backend-frameworks/` (24 SKILLs + 3 resolver agents), `.../api-design-and-development/nestjs-patterns/`, `.../databases/jpa-patterns/`, `.../databases/kotlin-exposed-patterns/`

## Verification (post-merge)

1. Backend ticket on Go project → backend-dev queries `websites/go_dev_en`, implements
2. Frontend ticket on Next.js → frontend-dev queries `websites/nextjs_org_docs_en` (no inline fallback)
3. Offline React ticket → frontend-dev falls back to inline React convention (kept)
4. Security NFR → backend-dev loads local `security/security-review/` (unchanged)
5. qa-tester queries `websites/playwright_dev_en` for tricky selector
6. code-reviewer queries Context7 for CVE on suspicious lib version
7. `git grep -E "backend-frameworks|nestjs-patterns|jpa-patterns|kotlin-exposed-patterns" -- . ':!PLAN.md'` returns 0

Rollback tag `pre-context7-refactor` stays until all 7 verifications pass green.
