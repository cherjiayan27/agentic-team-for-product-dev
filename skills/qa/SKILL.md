---
name: qa
description: Master routing skill for the QA Agent. Maps test framework detection and code review lens to specific sub-skills. Used to determine which testing guides, E2E frameworks, and review references to load for a given US-XX.
user-invocable: false
---

# QA — Skill Router

Read this once at the start of every US-XX. Based on the detected test frameworks and the code review lenses you are applying, identify which sub-skill folders to read. Read only what applies — do not load the full tree.

All sub-skills live under subdirectories of this skill. Read them using the Read tool at the relative path shown.

---

## Job 1: Testing

### Step 1a: Detect Integration Test Framework → Load Testing Skill

Detect from existing test files first, then confirm against project config.

| Detected Framework | Detection Signal | Skill Path |
|---|---|---|
| Jest / Supertest / Vitest | `jest` or `vitest` in `package.json`, existing `*.test.ts` / `*.spec.ts` files | `tdd-guide/SKILL.md` + `senior-qa/SKILL.md` |
| pytest | `pytest` in `requirements.txt` or `pyproject.toml`, existing `test_*.py` files | `tdd-guide/SKILL.md` + `senior-qa/SKILL.md` |
| JUnit / Kotest | `pom.xml` or `build.gradle`, existing `*Test.java` / `*Spec.kt` files | `tdd-guide/SKILL.md` |
| Go test | `go.mod` present, existing `*_test.go` files | *(built-in — no skill needed, follow go test conventions)* |
| RSpec | `Gemfile` with `rspec`, existing `*_spec.rb` files | *(detect from existing spec files)* |
| No existing tests (greenfield) | No test files found | `tdd-guide/SKILL.md` + `senior-qa/SKILL.md` |

**`senior-qa` executable scripts** — available in `senior-qa/scripts/` for Job 1:

| Script | When to run |
|---|---|
| `coverage_analyzer.py` | After test suite runs — analyze coverage gaps against FR/EC IDs |
| `e2e_test_scaffolder.py` | Scaffolding E2E test files from user story structure |
| `test_suite_generator.py` | Generate initial test suite skeleton from spec FR/EC list |

### Step 1b: Detect E2E Framework → Load E2E Skill

| Detected Framework | Detection Signal | Skill Path |
|---|---|---|
| Playwright | `@playwright/test` in `package.json` or existing `*.spec.ts` in `e2e/` or `tests/` | `playwright-pro/SKILL.md` — entry point; contains templates organized by feature type (`templates/auth/`, `templates/crud/`, `templates/forms/`, `templates/search/`, `templates/checkout/`, `templates/dashboard/`, `templates/notifications/`, `templates/onboarding/`) — navigate to the relevant template subdirectory when writing E2E tests for that feature type |
| Cypress | `cypress` in `package.json` or existing `cypress/` directory | *(detect from existing Cypress test files — no dedicated skill)* |
| No E2E framework | Neither Playwright nor Cypress found | Flag to user — E2E tests require a framework to be installed |

### Step 1c: After Dev Fixes → Verify

After dev signals a fix is done, before re-running full suite:

| Situation | Skill Path |
|---|---|
| Verifying a specific fix actually resolves the reported issue | `verification-before-completion/SKILL.md` |
| Build error encountered during test run | `_agent--build-error-resolver.md` |

---

## Job 2: Code Review

Load the skill for each lens you are applying. Read before writing findings for that lens.

| Lens | What You Look For | Skill Path |
|---|---|---|
| Lens 1: Code Quality | Bugs, logic errors, null handling, race conditions | `code-reviewer/SKILL.md` |
| Lens 2: Security | Injection, auth, secrets, CSRF, IDOR | *(inline in qa-agent — no dedicated security skill in this folder)* |
| Lens 3: Performance | N+1 queries, unbounded queries, memory leaks | *(inline in qa-agent — no dedicated performance skill in this folder)* |
| Lens 4: Conventions | Naming, file placement, error handling patterns | `code-reviewer/SKILL.md` + `karpathy-coder/SKILL.md` |
| Lens 5: Holistic | Regressions, cross-cutting concerns, tech debt | `adversarial-reviewer/SKILL.md` |
| Lens 6: FR/EC Traceability | Test names match spec IDs, every FR/EC covered | *(inline in qa-agent — no external skill needed)* |

**PR-level review** — when reviewing the full diff as a staff engineer before issuing verdict:

| Trigger | Skill Path |
|---|---|
| Full PR diff review (all 6 lenses combined) | `review/SKILL.md` |
| Browser-based QA of a deployed build (with fixes) | `qa/SKILL.md` |
| Report-only browser QA (no fixes, findings only) | `qa-only/SKILL.md` |

---

## What NOT to Load

| Skill | Skip because |
|---|---|
| `test-driven-development/SKILL.md` | TDD methodology for devs writing code test-first — QA writes from spec, not from code. Do not load. |
| Backend framework skills | Backend Dev's domain — review behavior, not implementation patterns |
| Architecture skills | Feature Manager produced the design doc — not QA scope |
| DevOps / CI/CD | Ship Agent's domain |
| Incident response / red team | Operational security — out of scope for review tickets |

---

## Minimum Per US-XX

| Always | Conditional |
|---|---|
| One testing skill (or detect from existing files) | `playwright-pro` — if Playwright is the E2E framework |
| `code-reviewer` (Lens 1 + Lens 4) | `adversarial-reviewer` — if Lens 5 surfaces architectural or cross-cutting concerns |
| `verification-before-completion` — after each dev fix | `karpathy-coder` — if Lens 4 finds divergence from codebase conventions |
| | `review` — when issuing the final PR verdict |
