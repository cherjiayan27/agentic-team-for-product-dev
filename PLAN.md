# Refactor Plan — agentic-team-for-product-dev

**Goal:** Fix structural issues surfaced in audit. Make agents work properly before shipping.

**Principle:** Safe, reversible, phased. Each phase = git commit = rollback point.

**Scope:** Option B from audit (skills-only extraction, no plugin packaging yet). QA split to 2 agents. Brain seeded generic.

---

## Pre-flight

- [ ] Confirm current branch clean (`git status`)
- [ ] Create feature branch: `git checkout -b refactor/audit-fixes`
- [ ] Commit after each phase for easy rollback

---

## Phase 0 — Safety net (5 min)

**What:** Baseline cleanliness.

### Files changed
- `+ .gitignore` (new)
- `- **/.DS_Store` (delete all, 6 files)

### Actions
1. Create `.gitignore`:
   ```
   .DS_Store
   *.swp
   node_modules/
   __pycache__/
   .venv/
   ```
2. `git rm --cached` all tracked `.DS_Store` files.
3. Delete untracked `.DS_Store` files.

### Validate
- `find . -name ".DS_Store"` returns empty.
- `git status` clean before commit.

### Commit
`chore: add .gitignore, remove .DS_Store files`

---

## Phase 1 — Quick frontmatter + README fixes (10 min)

**What:** Remove invalid frontmatter field + bad README instruction.

### Files changed
- `agents/pm-agent.md` — remove `memory: user` line
- `README.md` — fix invocation instructions
- `agents/frontend-dev.md` — normalize `skills: [frontend-engineering]` → list form (cosmetic, keep if works)

### Actions

**pm-agent.md:**
- Delete line `memory: user` (line 6). Not a documented field; silently ignored today.

**README.md:**
- Replace block showing `claude --agent pm-agent` with:
  ```markdown
  ### Invoke an agent

  Claude delegates automatically when your message matches an agent's description. You can also invoke explicitly via the Task tool:

  > "Use pm-agent to validate this new feature idea"

  Or type the agent name at the start of a message.
  ```
- Remove the `# Or let Claude delegate automatically` block duplication.

### Validate
- `grep -r "memory: user" agents/` returns empty.
- `grep -r "claude --agent" .` returns empty.

### Commit
`fix: remove invalid frontmatter field, correct README invocation docs`

---

## Phase 2 — Cleanup duplicate QA skills (15 min)

**What:** Delete redundant SKILLs that collide or duplicate.

### Files changed (delete)
- `skills/qa/qa/` — entire dir (nested qa inside qa; malformed)
- `skills/qa/qa-only/` — entire dir (duplicate of qa/)
- `skills/qa/test-driven-development/` — entire dir (duplicate of tdd-guide/)
- `skills/qa/_agent--build-error-resolver.md` — orphan file (wrong location)

### Actions
1. Read each dir's SKILL.md to confirm duplication before delete.
2. If `_agent--build-error-resolver.md` has unique content not in any other skill, move to `agents/build-error-resolver.md` with proper frontmatter. Otherwise delete.
3. Delete dirs via `rm -rf`.

### Validate
- `find skills/qa -name "SKILL.md"` count drops from 14 → 10.
- QA router `skills/qa/SKILL.md` still references only existing paths. Grep router for deleted dir names; remove dead rows.

### Commit
`chore: remove duplicate and orphan QA skills`

---

## Phase 3 — Extract playwright-pro → skills/qa/playwright/ (30 min)

**What:** Strip `playwright-pro` plugin down to its useful skill content. Delete plugin metadata.

### Files changed

**Move/keep:**
- `skills/qa/playwright-pro/SKILL.md` → `skills/qa/playwright/SKILL.md` (may need router adjustments)
- `skills/qa/playwright-pro/reference/*` → `skills/qa/playwright/references/*`
- `skills/qa/playwright-pro/templates/**` → `skills/qa/playwright/templates/**` (keep all — useful)
- `skills/qa/playwright-pro/skills/*/SKILL.md` → flatten into `skills/qa/playwright/references/` or keep nested

**Delete:**
- `.claude-plugin/` (plugin metadata, dead in skill context)
- `.mcp.json` (MCP server config, dead)
- `hooks/` (hooks.json + .sh — dead without plugin)
- `integrations/` (full TS packages for BrowserStack + TestRail — dead)
- `CLAUDE.md` (plugin-level, not needed)
- `LICENSE` (keep only if license requires; else drop)
- `settings.json` (plugin settings, dead)
- `agents/test-architect.md`, `agents/test-debugger.md`, `agents/migration-planner.md` — these are agents, not skills. **Decide:** promote to top-level `agents/` OR delete. Recommend delete unless user wants them as QA sub-agents.

### Actions
1. Read each file above before deleting to confirm no unique content lost.
2. Rename `playwright-pro` → `playwright`. Simpler.
3. Rewrite nested SKILL.md to work as reference (drop `name:` frontmatter mismatches).
4. Update QA router `skills/qa/SKILL.md` — change `playwright-pro/SKILL.md` references to `playwright/SKILL.md`.

### Open decision
- Keep `templates/auth/`, `templates/crud/`, etc.? They are goldmine. **Recommend keep.**
- Keep nested `skills/qa/playwright/skills/{init,testrail,migrate,review,fix,generate,report,browserstack,coverage}/SKILL.md`? Each is a sub-task. **Recommend flatten** to `skills/qa/playwright/references/<name>.md` to simplify.

### Validate
- `find skills/qa/playwright -type f | wc -l` — expect ~40 (down from ~90).
- QA router still points to valid paths.
- No `.claude-plugin` dirs remain.

### Commit
`refactor: extract playwright-pro skill content, drop plugin metadata`

---

## Phase 4 — Extract karpathy-coder → skills/qa/karpathy-review/ (15 min)

**What:** Same pattern as Phase 3 but smaller.

### Files changed

**Move/keep:**
- `SKILL.md` → `skills/qa/karpathy-review/SKILL.md`
- `references/anti-patterns.md, enforcement-patterns.md, karpathy-principles.md` → `skills/qa/karpathy-review/references/`

**Delete:**
- `.claude-plugin/plugin.json`
- `hooks/karpathy-gate.sh` (dead without plugin)
- `scripts/*.py` — review if router calls them. If not, delete.
- `expected_outputs/` — script test artifacts, delete if scripts deleted
- `commands/karpathy-check.md` — slash-command tied to plugin, delete
- `agents/karpathy-reviewer.md` — agent, promote or delete (recommend delete; merge into `code-reviewer` agent later)
- `README.md` — optional keep
- `.DS_Store`

### Actions
1. Read SKILL.md to confirm it stands alone without scripts.
2. Delete plugin metadata + scripts + commands.
3. Rename `karpathy-coder` → `karpathy-review`.
4. Update QA router paths.

### Validate
- `skills/qa/karpathy-review/` contains only `SKILL.md` + `references/`.
- QA router points to new path.

### Commit
`refactor: extract karpathy-coder skill content, drop plugin metadata`

---

## Phase 5 — Seed generic brain (30 min)

**What:** Replace `~/Obsidian/brain/` dependency with shipped `brain/` dir.

### Files changed
- `+ brain/_index.md` (navigation root)
- `+ brain/frameworks/revenue-architecture.md` (generic summary, not Jacco's full book)
- `+ brain/frameworks/retention-benchmarks.md`
- `+ brain/frameworks/north-star-metric.md`
- `+ brain/frameworks/pirate-metrics.md` (AARRR)
- `+ brain/frameworks/gtm-motions.md`
- `+ brain/README.md` (what this is, how to extend)
- `agents/pm-agent.md` — replace `~/Obsidian/brain/` with `brain/` (relative to repo root)

### Actions
1. Create `brain/` with 5-6 seed framework files (~1-2 pages each, generic, citation-ready).
2. Each file: **What / When to use / Key formula / Benchmark if any / Source**.
3. Update pm-agent.md:
   - Replace path `~/Obsidian/brain/` → `brain/` everywhere.
   - Add note: "If project has a local `brain/` override, prefer that. Otherwise use the repo-shipped `brain/`."
   - Add env var fallback: `${CLAUDE_BRAIN_PATH:-brain/}` as path.

### Open decision
- Scope of seed brain: 5 frameworks or 15? Start with 5-6 most-used. User can add.
- Where does pm-agent look for project override? Recommend `docs/brain/` in the target project.

### Validate
- `brain/_index.md` exists, lists all files.
- pm-agent.md has no `~/Obsidian` references.

### Commit
`feat: ship generic brain knowledge base, remove Obsidian dependency`

---

## Phase 6 — Split qa-agent → qa-tester + code-reviewer (45 min)

**What:** One QA agent too overloaded. Split into two focused agents.

### Files changed
- `- agents/qa-agent.md` (delete)
- `+ agents/qa-tester.md` (new)
- `+ agents/code-reviewer.md` (new)
- `PIPELINE.md` — update pipeline diagram + roster
- `README.md` — update agent table
- `skills/qa/SKILL.md` — split router: test-related rows → qa-tester context, review rows → code-reviewer context

### agents/qa-tester.md scope
- Read FRD → write integration (FR-XX), edge case (EC-XX), NFR, E2E tests.
- Run suite. Report pass/fail per spec ID.
- Coverage requirement enforced.
- If tests fail → send back to dev agent.

### agents/code-reviewer.md scope
- Review diff across 6 lenses (quality, security, perf, conventions, holistic, traceability).
- Severity-gate: Critical/High → block, Medium/Low → flag.
- Does NOT run tests (qa-tester owns that).

### Sequencing
- Dev finishes → qa-tester runs → if pass → code-reviewer runs → if pass → Ship.
- Or parallel: tester + reviewer simultaneously. Ship only if both green.
- **Recommend sequential** (simpler handoff contract, less merge confusion).

### Actions
1. Copy qa-agent.md Job 1 → qa-tester.md. Strip code review sections.
2. Copy qa-agent.md Job 2 → code-reviewer.md. Strip testing sections.
3. Update frontmatter: `name:`, `description:`, `skills:` (both use `qa` skill but read different rows of router).
4. Update PIPELINE.md:
   - Agent roster 7 → 8
   - Step 7 "QA" → Step 7 "qa-tester" + Step 8 "code-reviewer"
   - Renumber Ship Agent step
   - Update handoff contract section
5. Update README.md agent table.
6. Update QA router SKILL.md: two "context" sections explaining which rows each agent loads.

### Validate
- Two new agent files exist with valid frontmatter.
- Old `qa-agent.md` gone.
- PIPELINE.md has 8 agents.
- QA router routes cleanly for both agents.

### Commit
`refactor: split qa-agent into qa-tester and code-reviewer`

---

## Phase 7 — Tighten skill frontmatter (5 min)

**What:** Add `user-invocable: false` to agent-only skills so they don't pollute `/` menu.

### Files changed
- `skills/pm-frameworks/SKILL.md`
- `skills/backend-engineering/SKILL.md`
- `skills/frontend-engineering/SKILL.md`

Each: add `user-invocable: false` line to frontmatter.

### Not touched
- `update-prd` already has `disable-model-invocation: true` (correct — user-only).
- `qa`, `spec-writing`, `ticket-writing` already have `user-invocable: false`.
- `github-flow` is globally symlinked; out of scope.

### Commit
`chore: mark agent-only skills as user-invocable false`

---

## Phase 8 — Sync docs (10 min)

**What:** Docs must reflect new structure after all changes.

### Files changed
- `PIPELINE.md` — verify 8-agent flow, updated handovers, updated skill paths
- `README.md` — agent table, skill table, installation symlink commands (one new agent, renamed skill paths)
- `skills/qa/SKILL.md` — verify all paths match extracted skill locations

### Actions
1. Full read-through of PIPELINE.md — patch stale references.
2. Full read-through of README.md — symlink section now has 8 agents (add code-reviewer line, remove qa-agent line, add qa-tester line).
3. QA router — ensure all paths green (file existence check).

### Validate
- `grep -E "qa-agent|playwright-pro|karpathy-coder|Obsidian" PIPELINE.md README.md` returns empty.
- All paths referenced in router actually exist on disk.

### Commit
`docs: sync PIPELINE and README with refactored structure`

---

## Phase 9 (optional, defer) — Plugin packaging

**What:** Package repo as installable Claude Code plugin. Enables `/plugin install git@...`.

**Skip for now.** User said: get agents working first. Revisit when stable.

When revisiting:
- Add `.claude-plugin/plugin.json` at repo root
- Publish to GitHub
- Consumers install via `/plugin install`
- Drop the 13-symlink README section

---

## Rollback

Each phase = one commit on `refactor/audit-fixes` branch.

To undo phase N: `git reset --hard <phase-N-1-commit>`.

To bail entirely: `git checkout main; git branch -D refactor/audit-fixes`.

---

## Time budget

| Phase | Task | Time |
|---|---|---|
| 0 | .gitignore + DS_Store | 5 min |
| 1 | Frontmatter + README | 10 min |
| 2 | Delete duplicate QA | 15 min |
| 3 | Extract playwright | 30 min |
| 4 | Extract karpathy | 15 min |
| 5 | Seed brain | 30 min |
| 6 | Split QA agent | 45 min |
| 7 | Tighten frontmatter | 5 min |
| 8 | Sync docs | 10 min |
| **Total** | | **~2.5 hrs** |

Can be done in one sitting, or phase-by-phase over days. Each phase is independent after Phase 0.

---

## Locked decisions

1. **Playwright templates** — **KEEP ALL** (`templates/auth, crud, forms, checkout, dashboard, search, notifications, onboarding, accessibility, settings, api, crud`). Big value. Keep folder structure intact under `skills/qa/playwright/templates/`.

2. **Playwright nested skills** — **FLATTEN to references.** Each of `init, testrail, migrate, review, fix, generate, report, browserstack, coverage` gets converted: their `SKILL.md` → `skills/qa/playwright/references/<name>.md` (strip frontmatter, keep body). Any sibling `.md` files (e.g., `flaky-taxonomy.md`, `cypress-mapping.md`) move to same references folder.

3. **Plugin-shipped agents** — **DELETE**. Remove `test-architect.md`, `test-debugger.md`, `migration-planner.md` (from playwright-pro), and `karpathy-reviewer.md` (from karpathy-coder). 8-agent roster is defined; do not pollute.

4. **Brain scope** — **6 framework files.** Seeds:
   - `brain/frameworks/revenue-architecture.md`
   - `brain/frameworks/retention-benchmarks.md`
   - `brain/frameworks/north-star-metric.md`
   - `brain/frameworks/pirate-metrics.md` (AARRR)
   - `brain/frameworks/gtm-motions.md`
   - `brain/frameworks/jtbd.md` (Jobs to Be Done — most-used PM framework)
   - Plus `brain/_index.md` (nav root) + `brain/README.md` (what this is)

5. **QA split sequencing** — **SEQUENTIAL.** Dev → qa-tester → (pass) → code-reviewer → (pass) → Ship. Simpler handoff contract. If either fails, send back to relevant agent. No parallel.

6. **Karpathy scripts** — **DROP.** Delete `scripts/complexity_checker.py`, `assumption_linter.py`, `diff_surgeon.py`, `goal_verifier.py`, and `expected_outputs/` test artifacts. Router does not call them. Reduces weight.

---

## Execution trigger

All decisions locked. On user "go" → start Phase 0. Commit per phase on branch `refactor/audit-fixes`.
