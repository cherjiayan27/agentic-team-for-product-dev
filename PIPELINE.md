# Multi-Agent Pipeline for Product Development

A Spec-Driven Development (SDD) pipeline powered by 7 specialist agents. Takes a feature idea from problem validation through to deployed code — with full traceability from requirement IDs (FR-XX, EC-XX) to tests.

---

## The Pipeline

```
User idea
    │
    ▼
┌──────────────────────────────────────────────────────┐
│  1. PM AGENT                                         │
│                                                      │
│  Thinks with first-principles rigor.                 │
│  Challenges assumptions before building.             │
│  Preloads: pm-frameworks skill                       │
│                                                      │
│  Job 1: PRD Author (product-level)                   │
│    → Creates and maintains the PRD                   │
│    → Problem validation (6 questions incl. market     │
│       signal)                                        │
│    → Surface load-bearing assumptions                │
│    → Strategic alignment (jobs, metrics, hypothesis) │
│    → 2-3 solution approaches (speed/impact/simplify) │
│    → Product roadmap (phases, sprints, features)     │
│    → User stories ("As a [user]..." + INVEST)        │
│    → Updates PRD throughout lifecycle                 │
│      (status changes, metrics, learnings, scope)     │
│    → Output: PRD with user stories                   │
│                                                      │
│  Job 2: FRD Reviewer (feature-level)                 │
│    → Reviews FRDs written by Feature Manager         │
│    → Checks intent match per US-XX                   │
│    → Approves or sends back with feedback            │
│    → Updates PRD status after approval               │
│                                                      │
│  Hands over: each US-XX to Feature Manager for FRD   │
└──────────────────────────────────────────────────────┘
    │
    ▼
┌──────────────────────────────────────────────────────┐
│  2. FEATURE MANAGER                                  │
│                                                      │
│  Writes one combined spec per User Story (US-XX):    │
│  Template: templates/frd-template.md                 │
│                                                      │
│    Section 1: Codebase Feasibility                   │
│      → Reuse (existing modules/patterns)             │
│      → New work (entities, endpoints, services)      │
│      → Conflicts / risks (3 bullets max each)        │
│                                                      │
│    Section 2: Behavioral Spec (Phase 2)              │
│      → Functional Requirements (FR-XX)               │
│        "The system shall..." — traces to US-XX       │
│        MoSCoW priority per FR                        │
│      → Non-Functional Requirements (NFR-XX)          │
│        Performance, security, accessibility          │
│        Scoped to this story only                     │
│      → Edge Cases (EC-XX)                            │
│        Boundary conditions — traces to FR-XX         │
│        At least one EC per Must-have FR              │
│                                                      │
│    Section 3: Light Design Doc (Phase 3)             │
│      → API endpoints (method, path, purpose)         │
│      → Request / response shapes (field + type only) │
│      → Data model changes (table/field/type)         │
│      → Integration points                            │
│                                                      │
│    Section 4: Decisions Log                          │
│      → Decision, choice, alternatives, rationale     │
│                                                      │
│  HARD GATE: Design Doc only after behavioral spec    │
│  is approved by PM Agent.                            │
│                                                      │
│  Output: combined spec per US-XX                     │
│  Hands back: to PM Agent for review                  │
└──────────────────────────────────────────────────────┘
    │
    ▼
┌──────────────────────────────────────────────────────┐
│  3. PM AGENT (as FRD Reviewer)                       │
│                                                      │
│  Reviews each FRD against its parent US-XX:          │
│                                                      │
│    FRD for US-01 → Does it match my intent?          │
│      → Approved ✓ → PRD updated                     │
│    FRD for US-02 → FR-05 doesn't match intent        │
│      → Needs Changes ✗ → back to Feature Manager     │
│      → Feature Manager revises → PM re-reviews       │
│      → Approved ✓ → PRD updated                     │
│    FRD for US-03 → Approved ✓ → PRD updated         │
│                                                      │
│  Gate: ALL FRDs for current phase must be approved    │
│  After approval: PRD status updated, FRDs linked     │
│                                                      │
│  HARD GATE: No implementation before FRD approval.   │
└──────────────────────────────────────────────────────┘
    │
    ▼
┌──────────────────────────────────────────────────────┐
│  4. TICKET WRITER                                    │
│                                                      │
│  Detects platform (GitHub/Linear/Jira) and           │
│  project type (fullstack/BE-only/FE-only/CLI)        │
│  from codebase, then per approved US-XX:             │
│                                                      │
│    Parent Issue (via CLI)                            │
│      → User story + why it matters                   │
│      → Acceptance criteria = Must-have FRs           │
│      → Task list linking sub-issues                  │
│                                                      │
│    Backend Sub-Issue                                 │
│      → FR-XX scoped to API/service/data layer        │
│      → EC-XX edge cases for backend                  │
│      → Design doc: endpoints + data model            │
│      → Blocks Frontend                               │
│                                                      │
│    Frontend Sub-Issue                                │
│      → FR-XX scoped to UI/state/API client           │
│      → EC-XX edge cases for frontend                 │
│      → Design doc: endpoints to integrate            │
│      → Blocked by Backend                            │
│                                                      │
│  Single ticket for BE-only / FE-only / CLI           │
│  Updates PRD sprint board with ticket IDs            │
│                                                      │
│  Template: templates/ticket-template.md              │
└──────────────────────────────────────────────────────┘
    │
    ▼
┌──────────────────────────────────────────────────────┐
│  5. BACKEND DEV AGENT                                │
│                                                      │
│  Detects backend stack from codebase, then:          │
│    → Implements data models, services, API endpoints │
│    → Database migrations (if schema changes)         │
│    → Unit tests for their own code (isolated)        │
│                                                      │
│  Follows project conventions detected from codebase. │
│  Backend must pass before Frontend starts.           │
└──────────────────────────────────────────────────────┘
    │
    ▼
┌──────────────────────────────────────────────────────┐
│  6. FRONTEND DEV AGENT                               │
│                                                      │
│  Detects frontend stack from codebase, then:         │
│    → Implements UI components, state management      │
│    → API client integration                          │
│    → Responsive design (mobile-first)                │
│    → Unit tests for their own code (isolated)        │
│                                                      │
│  Follows project conventions detected from codebase. │
└──────────────────────────────────────────────────────┘
    │
    ▼
┌──────────────────────────────────────────────────────┐
│  7. QA AGENT                                         │
│                                                      │
│  For EACH User Story (US-XX):                        │
│                                                      │
│  Testing (writes tests from the spec):               │
│    → FR-XX → integration tests                       │
│      (does the API/service behave as specified?)     │
│    → NFR-XX → performance/security tests             │
│      (does it meet the constraints?)                 │
│    → EC-XX → edge case tests                         │
│      (does it handle boundary conditions?)           │
│    → User flow → E2E tests                           │
│      (does the full journey work end to end?)        │
│                                                      │
│  Code review (6 specialist lenses):                  │
│    → Code quality (bugs, logic errors)               │
│    → Security (injection, auth, secrets)             │
│    → Performance (N+1 queries, bundle size, memory)  │
│    → Conventions (naming, patterns, structure)        │
│    → Holistic (architectural fit, cross-cutting)     │
│    → FR/EC traceability (test names match IDs)       │
│                                                      │
│  If tests fail or issues found → Dev fixes → re-QA   │
│  Gate: All tests pass + all critical issues resolved │
└──────────────────────────────────────────────────────┘
    │  QA passed
    ▼
┌──────────────────────────────────────────────────────┐
│  8. SHIP AGENT                                       │
│                                                      │
│  Push + PR:                                          │
│    → git push → create draft PR                      │
│    → PR template discovery + commit analysis         │
│    → Structured PR body (summary, test plan, ticket) │
│                                                      │
│  CI + Merge:                                         │
│    → Mark PR ready → wait for CI                     │
│    → If CI fails → read logs → fix → re-push         │
│    → Squash merge → delete branch                    │
│                                                      │
│  Post-Deploy:                                        │
│    → Wait for deploy (detect platform from project)  │
│    → Canary checks (page load, console errors, perf) │
│    → Mobile viewport verification (360-430px)        │
│    → If critical issue → revert merge commit         │
│                                                      │
│  Cleanup:                                            │
│    → Delete merged branches (local + remote)         │
│    → Prune stale remote references                   │
└──────────────────────────────────────────────────────┘
    │
    ▼
┌──────────────────────────────────────────────────────┐
│  BUG FOUND?                                          │
│                                                      │
│  Trace bug → FR/EC ID → fix the FRD first            │
│  → Feature Manager updates FR/NFR/EC in FRD          │
│  → PM Agent re-reviews FRD                           │
│  → PM Agent updates PRD if needed                    │
│  → Dev agent fixes code                              │
│  → QA Agent re-reviews                               │
│  → Ship Agent pushes the fix                         │
│                                                      │
│  Debug the spec, not the code.                       │
└──────────────────────────────────────────────────────┘
```

---

## Agent Roster

| # | Agent | Role | Core Expertise (product-agnostic) |
|---|---|---|---|
| 1 | **PM Agent** | PRD owner. Creates and maintains the PRD (problem, strategy, metrics, roadmap, user stories). Reviews FRDs written by Feature Manager. Updates PRD throughout lifecycle. | PRD authoring, problem validation, strategic alignment, user story writing, FRD review, first-principles rigor, anti-sycophancy |
| 2 | **Feature Manager** | Solutions architect. Per US-XX: reads codebase for feasibility, writes behavioral spec (FR/NFR/EC), writes light design doc (API shapes, data model, integration points). Combined doc handed to PM for review. | SDD spec formalism (FR/NFR/EC), system architecture, API design, data modeling, codebase analysis |
| 3 | **Ticket Writer** | Ticket factory. Detects platform and project type, creates parent + sub-issues via CLI per US-XX, updates PRD sprint board with ticket IDs. | Platform detection, ticket decomposition, acceptance criteria mapping, sub-issue structure, blocking relationships |
| 4 | **Backend Dev** | Backend engineer. Reads backend sub-issue, detects stack and conventions from codebase, implements data models → migrations → services → API endpoints → unit tests. Signals completion with passing tests before Frontend starts. | Stack detection, convention adoption, data modeling, migrations, service layer, API handlers, FR/EC-traced unit tests |
| 5 | **Frontend Dev** | Frontend engineer. Reads frontend sub-issue after backend is done, detects stack and conventions from codebase, implements API client → state → components → route integration → unit tests. Mobile-first responsive. | Stack detection, component architecture, state management, API integration, FR/EC-traced unit tests, responsive design |
| 6 | **QA Agent** | Quality gatekeeper. Reads FRD to write integration (FR-XX), edge case (EC-XX), NFR constraint, and E2E tests. Reviews code across 6 lenses. Critical/High findings block handoff. Sends back to dev until gate passes. | Spec-driven testing, integration tests, E2E tests, code quality, security, performance, conventions, FR/EC traceability |
| 7 | **Ship Agent** | Deployment owner. Pushes branch, creates structured draft PR, marks ready for CI, squash merges on green, runs canary checks post-deploy, reverts on critical failure, prunes branches. | Git workflow, PR creation, CI monitoring, squash merge, deploy platform detection, canary checks, revert, branch cleanup |

---

## Handover Protocol

Each handover between agents follows a strict contract.

### PM Agent → Feature Manager

The PM Agent delivers the **PRD** containing user stories. For each US-XX in the current phase, the Feature Manager writes an **FRD** using `templates/frd-template.md`.

The Feature Manager receives the user story and writes a combined spec:
- Section 1: Codebase Feasibility (reuse, new work, conflicts — 3 bullets max each)
- Section 2: Behavioral Spec — Functional Requirements (FR-XX), Non-Functional Requirements (NFR-XX), Edge Cases (EC-XX)
- Section 3: Light Design Doc — API endpoints, request/response shapes, data model changes, integration points
- Section 4: Decisions Log

HARD GATE: Design Doc section only after behavioral spec is approved by PM Agent.

### Feature Manager → PM Agent (FRD Review)

The Feature Manager delivers each **FRD** back to the PM Agent.

The PM Agent reviews each FRD against its parent US-XX in the PRD:
- Does the FRD match the intent of the user story?
- Are the edge cases realistic?
- Are the NFRs appropriate?
- Does the feasibility assessment change priorities?

Verdict: **Approved** or **Needs Changes** (with specific feedback).

After approval: PM Agent updates the PRD (FRD status, links).

### PM Agent → Ticket Writer

The PM Agent delivers the **approved FRD** for a user story.

The Ticket Writer detects the project's ticket platform (GitHub Issues, Linear, Jira) and project type (fullstack, backend-only, frontend-only, CLI), then creates via CLI:
- One parent issue per US-XX (user story + why it matters + Must-have FRs as acceptance criteria)
- Backend sub-issue: FR-XX scoped to API/service/data layer, EC-XX edge cases, design doc reference — blocks Frontend
- Frontend sub-issue: FR-XX scoped to UI/state/API client, EC-XX edge cases, design doc endpoints — blocked by Backend
- Single ticket for backend-only, frontend-only, or CLI projects

After creation: updates PRD sprint board with ticket IDs.

### Ticket Writer → Backend Dev → Frontend Dev

Standard development workflow:
- Backend Dev picks up backend sub-issue, implements, tests, commits
- Frontend Dev picks up frontend sub-issue after backend is done
- Both reference FR-XX / EC-XX IDs in test names

### Dev Agents → QA Agent

After both backend and frontend are committed, the QA Agent does two jobs:

**Testing (per User Story):**
- Reads FR-XX → writes integration tests (does the API/service behave as specified?)
- Reads NFR-XX → writes performance/security tests (does it meet the constraints?)
- Reads EC-XX → writes edge case tests (does it handle boundary conditions?)
- Writes E2E tests for the full user flow (does the journey work end to end?)

**Code Review:**
- 6 specialist lenses (quality, security, performance, conventions, holistic, FR/EC traceability)

If tests fail or code issues found → Dev fixes → QA re-runs.
Gate: all tests pass + all critical issues resolved.

### QA Agent → Ship Agent

Once QA passes:
- Ship Agent takes over to get the code to production
- Push → create draft PR with structured body
- Mark PR ready → wait for CI → fix if CI fails
- Squash merge → auto-deploy triggers
- Post-deploy canary checks (page load, console errors, performance, mobile)
- Clean up merged branches (local + remote)

---

## Document Structure

Two documents at two levels:

### PRD (Product Requirements Document) — product-level

**Owner:** PM Agent
**Template:** `templates/prd-template.md`
**Lives at:** `docs/prd.md`
**Updated:** Throughout the product lifecycle (living document)

Contains: overarching problem statement, strategic alignment, success metrics (with on-track tracking), product roadmap by phase, user stories table, decisions log, metrics review.

### FRD (Feature Requirements Document) — one per user story

**Owner:** Feature Manager (writes it), PM Agent (reviews it)
**Template:** `templates/frd-template.md`
**Lives at:** `docs/frd/[US-XX]-[feature-name].md`
**Updated:** Until approved, then frozen (changes require new FRD version)

Contains: reference to parent PRD + US-XX, codebase feasibility, functional requirements (FR-XX), non-functional requirements (NFR-XX), edge cases (EC-XX), light design doc (API shapes, data model, integration points), decisions log, approval status.

### How They Relate

```
PRD (one per product)
  → Problem, Strategy, Metrics, Roadmap
  → User Stories (US-01, US-02, US-03...)
      │
      ├── FRD for US-01 (FR-01, FR-02, EC-01, EC-02...)
      ├── FRD for US-02 (FR-03, FR-04, EC-03...)
      └── FRD for US-03 (FR-05, EC-04, EC-05...)
```

---

## Testing Strategy

| Type | What It Tests | Speed | Cost | Who Writes It |
|---|---|---|---|---|
| **Unit Tests** | A single function/method in isolation (mocks everything else) | Fast | Cheap | Backend Dev / Frontend Dev |
| **Integration Tests** | Multiple components working together (e.g., service + database, API + auth) | Medium | Medium | QA Agent |
| **E2E Tests** | The full user flow through the real system (browser → UI → API → DB → response) | Slow | Expensive | QA Agent |

### The Testing Pyramid

```
        /\
       /  \        E2E (few)
      /    \       Full user flows
     /──────\
    /        \     Integration (some)
   /          \    Components working together
  /────────────\
 /              \   Unit (many)
/________________\  Individual functions
```

Most tests should be unit tests (fast, cheap, catch most bugs). Integration tests cover the gaps between units. E2E tests cover critical user journeys only (they're slow and fragile).

### Test Ownership by Agent

| Agent | Test Types | What They Cover |
|---|---|---|
| **Backend Dev** | Unit tests | Tests their own code works in isolation (services, controllers, utilities) |
| **Frontend Dev** | Unit tests | Tests their own code works in isolation (components, hooks, helpers) |
| **QA Agent** | Integration tests + E2E tests | Tests the system behaves as specified — written directly from FR/NFR/EC per user story |

**Devs test their own code works.** (unit tests — fast, isolated, implementation-focused)

**QA tests the system works as specified.** (integration + E2E — behavior-focused, written from the spec, not the implementation)

### Test Naming Convention

All tests reference the FR/EC ID they verify:

```
FR-01: should create a resource
FR-02: should return list with pagination
EC-01: should return 404 when resource not found
EC-03: should handle empty input gracefully
```

This creates end-to-end traceability: **Spec → FR/EC ID → Test name → CI result**.

---

## Global Rules

1. **HARD GATE: No implementation before spec approval.** No code, no tickets, no branches until the PM explicitly approves every user story in the spec.
2. **Debug the spec, not the code.** When a bug is found downstream, trace it to the FR/EC ID. Fix the spec first, then fix the code.
3. **One question at a time.** PM Agent and Feature Manager never dump multiple questions. Wait for the answer before asking the next.
4. **Anti-sycophancy.** Agents take positions. If an answer is weak, they say so directly. No hedging.
5. **No invented requirements.** If something is unknown, write `TBD - needs research`. Never fabricate.
6. **FRs use "shall."** Every FR must be testable. If you cannot write a test for it, rewrite it.
7. **Scope is sacred.** Adding anything from Out of Scope requires the PM to explicitly acknowledge the scope change.
8. **Per-story traceability.** Every FR traces to a US. Every EC traces to an FR. Every test references an FR/EC ID. This chain is never broken.
9. **Backend blocks Frontend (when both exist).** If the project has both backend and frontend, backend sub-issue must be completed before frontend starts. For backend-only or frontend-only projects, this rule does not apply.
10. **Agents stay in their lane.** Each agent has specific skills and responsibilities. They do not step outside their domain.
11. **Agents are product-agnostic.** No agent hardcodes a specific framework, language, or tool. They detect the project's stack from the codebase and adapt. Technology-specific knowledge lives in the project's own skills, not in agent definitions.

---

## How to Use This Pipeline

### In a new project

```bash
# 1. Clone this repo
git clone https://github.com/[your-username]/agentic-team-for-product-dev.git

# 2. Symlink agents into your project or user-level config
ln -s /path/to/agentic-team-for-product-dev/agents ~/.claude/agents

# 3. Start with a feature idea
# Claude Code will use the PM Agent to begin the pipeline
```

### Across multiple products

All 7 agents are **product-agnostic**. They are experts at their role, not at a specific technology. When dropped into a project, they:

1. **Detect the stack** — read `package.json`, `go.mod`, `Cargo.toml`, `requirements.txt`, etc.
2. **Detect conventions** — read existing code patterns, test structure, project config
3. **Detect ticket platform** — read project docs, CLAUDE.md, or ask
4. **Adapt** — follow whatever patterns the project uses

The technology-specific knowledge lives in the **project's own skills** (e.g., a project might have `nestjs-best-practices` or `django-patterns`), not in the agent definitions. This means the same Backend Dev agent works for a Go project, a Python project, or a TypeScript project.

---

## Skills

Skills are reusable knowledge packages that agents preload.

| Skill | Type | Used By | Purpose |
|---|---|---|---|
| **pm-frameworks** | Agent-only (preloaded) | PM Agent | PM frameworks applied only when they sharpen the output — RICE, JTBD, MoSCoW, Kano, HEART, ICE, North Star, OST, Competitive Teardown, OKR Cascade, INVEST, B=MAP, First Principles, 30 UX Laws |
| **spec-writing** | Agent-only (preloaded) | Feature Manager | Spec writing references — FRD quality bar with worked example (Step 2), REST API design rules for light design docs (Step 3) |
| **ticket-writing** | Agent-only (preloaded) | Ticket Writer | Ticket writing references — GWT acceptance criteria patterns for 10 feature types (auth, CRUD, search, file upload, payment, notifications, negative tests, performance, accessibility) |
| **backend-engineering** | Agent-only (preloaded) | Backend Dev | Master routing skill — maps detected stack and task type to specific sub-skills (framework patterns, migrations, security, testing) |
| **frontend-engineering** | Agent-only (preloaded) | Frontend Dev | Master routing skill — maps detected stack, state management, test framework, and task type to inline conventions and sub-skills (design, UX, code quality) |
| **qa** | Agent-only (preloaded) | QA Agent | Master routing skill — maps detected test framework and code review lens to specific sub-skills (testing guides, E2E frameworks, review references) |
| **github-flow** | Agent-only (preloaded) | Ship Agent | Git + GitHub workflow — branch, PR, CI, merge, and cleanup conventions |

---

## PM Agent Memory System

The PM agent maintains a **daily memory** with automatic summarization and a rolling 7-day window.

```
Session starts
    │
    ▼  SessionStart hook (automatic)
    Creates ~/.claude/agent-memory/pm-agent/2026-04-17.md
    (only if doesn't exist — multiple sessions share same file)
    │
    ▼  Agent reads MEMORY.md (auto) + today's file
    │
    ▼  During session
    Agent appends learnings to today's file:
    [ProductName] GRR target set at 90% — revenue architecture benchmark
    [ProductName] Root cause was data model, not speed
    │
    ▼  Session ends
    Stop hook enforces PRD save
    │
    ▼  End of day (11:59pm — scheduled routine)
    scripts/pm-memory-summarize.sh runs:
      → Appends today's entries to MEMORY.md
      → Deletes daily files older than 7 days
      → Trims MEMORY.md to 200 lines (auto-load limit)
```

### Memory file structure

```
~/.claude/agent-memory/pm-agent/
  MEMORY.md          ← index, auto-loaded at startup (200 lines max)
  2026-04-17.md      ← today's learnings
  2026-04-16.md      ← yesterday
  2026-04-15.md      ← ...rolling 7 days
```

### What gets saved

- Pain points validated as real vs assumptions that were wrong
- Root causes identified — symptom vs actual cause
- Success metric targets and rationale
- B=MAP assessments — what predicted adoption correctly or not
- PRD decisions that changed and why
- Prioritization decisions and outcomes

### What does NOT get saved

- Facts derivable from the PRD itself
- Conversation summaries or session logs
- Anything already in the PRD or FRD documents

### To activate the daily schedule

```
/schedule daily at 11:59pm run ~/agentic-team-for-product-dev/scripts/pm-memory-summarize.sh
```

---

## Attribution

This pipeline combines best practices from:

- **Spec-Driven Development** (technomanagers.com) — behavioral spec format, FR/NFR/EC with traceable IDs, debug the spec not the code
- **gstack** — demand validation forcing questions, anti-sycophancy, review army
- **everything-claude-code** — PRP workflow, interactive PRD, multi-agent orchestration
- **superpowers** — hard gate (no implementation before spec), subagent-driven development, spec review
- **repomix** — PR feedback loop, contextual commits, thread resolution
- **claude-skills** — MoSCoW, Given-When-Then, INVEST validation, git workflow standards
