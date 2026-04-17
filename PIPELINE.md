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
│    → Problem validation (5 forcing questions)        │
│    → Surface assumptions + "Should this exist?" gate │
│    → First principles filter (3 truth tests)         │
│    → Strategic alignment (job, scope, metrics)       │
│    → 2-3 solution approaches (speed/impact/simplify) │
│    → Product roadmap (phases, timelines, features)   │
│    → User stories (Given-When-Then, MoSCoW, INVEST)  │
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
│  Writes one FRD per User Story (US-XX):              │
│  Template: templates/frd-template.md                 │
│                                                      │
│    Functional Requirements (FR-XX)                   │
│      → "The system shall..." language                │
│      → Each FR traces to its parent US-XX            │
│      → MoSCoW priority per FR                        │
│                                                      │
│    Non-Functional Requirements (NFR-XX)              │
│      → Performance, security, accessibility          │
│      → Scoped to this user story                     │
│                                                      │
│    Edge Cases (EC-XX)                                │
│      → Boundary conditions                           │
│      → Each EC traces to an FR-XX                    │
│      → At least one EC per Must-have FR              │
│                                                      │
│    Codebase Feasibility                              │
│      → Reuse (existing modules/patterns)             │
│      → New work (entities, endpoints, services)      │
│      → Risks (architectural conflicts)               │
│                                                      │
│    Decisions Log                                     │
│      → Decision, choice, alternatives, rationale     │
│                                                      │
│  Output: FRD per US-XX                               │
│  Hands back: FRD to PM Agent for review              │
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
│  Per approved US-XX, creates tickets:                │
│                                                      │
│    Parent Issue                                      │
│      → User Story from US-XX                         │
│      → Context, impact, acceptance criteria          │
│      → Acceptance Criteria                           │
│        = Must-have FRs from this story               │
│                                                      │
│    Backend Sub-Issue (engineering format)             │
│      → Steps from FR-XX that touch API/DB            │
│      → Testing requirements from EC-XX               │
│      → Blocks Frontend                               │
│                                                      │
│    Frontend Sub-Issue (engineering format)            │
│      → Steps from FR-XX that touch UI                │
│      → E2E testing from EC-XX                        │
│      → Blocked by Backend                            │
│                                                      │
│  Output: tickets ready for development               │
│                                                      │
│  Adapts to project's ticket platform:                │
│  Linear, Jira, GitHub Issues, etc.                   │
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
| 2 | **Feature Manager** | Solutions architect. Writes one FRD per user story (FR/NFR/EC). Explores codebase for feasibility. | SDD spec formalism (FR/NFR/EC), system architecture, API design, data modeling, codebase analysis |
| 3 | **Ticket Writer** | Ticket factory. Decomposes approved spec into tickets on any platform (Linear, Jira, GitHub Issues, etc.) with proper format and blocking relationships. | Ticket decomposition, acceptance criteria mapping, sub-issue structure, blocking relationships |
| 4 | **Backend Dev** | Backend engineer. Implements APIs, services, data models, migrations, and unit tests in whatever backend stack the project uses. | Backend architecture, API design, database operations, unit testing, migrations — framework detected from codebase |
| 5 | **Frontend Dev** | Frontend engineer. Implements UI components, state management, API integration, and E2E tests in whatever frontend stack the project uses. | Component architecture, state management, responsive design, E2E testing — framework detected from codebase |
| 6 | **QA Agent** | Quality gatekeeper. Writes integration + E2E tests from the spec (FR/NFR/EC per user story). Reviews code from 6 specialist perspectives. Sends back to dev if tests fail or issues found. | Integration testing, E2E testing, code quality, security review, performance review, conventions, FR/EC traceability |
| 7 | **Ship Agent** | Deployment owner. Pushes code, creates PRs, manages CI, merges, verifies production, cleans up branches. | Git workflow, PR creation, CI/CD, post-deploy verification, branch cleanup |

---

## Handover Protocol

Each handover between agents follows a strict contract.

### PM Agent → Feature Manager

The PM Agent delivers the **PRD** containing user stories. For each US-XX in the current phase, the Feature Manager writes an **FRD** using `templates/frd-template.md`.

The Feature Manager receives the user story and writes:
- Functional Requirements (FR-XX)
- Non-Functional Requirements (NFR-XX)
- Edge Cases (EC-XX)
- Codebase Feasibility
- Decisions Log

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

The Ticket Writer detects the project's ticket platform and creates:
- One parent issue per US-XX (user story + context + acceptance criteria from FRD)
- Backend sub-issue with FR-XX steps and EC-XX test cases
- Frontend sub-issue with FR-XX steps and EC-XX test cases
- Backend blocks Frontend

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

Contains: reference to parent PRD + US-XX, functional requirements (FR-XX), non-functional requirements (NFR-XX), edge cases (EC-XX), codebase feasibility, decisions log, approval status.

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
| **Integration Tests** | Multiple components working together (e.g., service + database, API + auth) | Medium | Medium | Backend Dev / Frontend Dev |
| **E2E Tests** | The full user flow through the real system (browser → UI → API → DB → response) | Slow | Expensive | Frontend Dev (typically) |

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

Skills are reusable knowledge packages that agents preload or that you invoke directly.

| Skill | Type | Used By | Purpose |
|---|---|---|---|
| **pm-frameworks** | Agent-only (preloaded) | PM Agent, Feature Manager | Optional PM frameworks (RICE, JTBD, MoSCoW, Kano, HEART, ICE, North Star, OST, Competitive Teardown, OKR) — applied only when they sharpen the output |
| **elon-musk-advisor** | Standalone (user-invoked) | You | First-principles advisor persona for stress-testing any idea, process, or decision on demand |

The PM Agent has first-principles thinking **built into its base framework** (assumption surfacing, 3 truth tests, "Should this exist?" gate). The `elon-musk-advisor` skill is for ad-hoc use when you want the full Elon persona on any topic outside the pipeline.

---

## Attribution

This pipeline combines best practices from:

- **Spec-Driven Development** (technomanagers.com) — behavioral spec format, FR/NFR/EC with traceable IDs, debug the spec not the code
- **gstack** — demand validation forcing questions, anti-sycophancy, review army
- **everything-claude-code** — PRP workflow, interactive PRD, multi-agent orchestration
- **superpowers** — hard gate (no implementation before spec), subagent-driven development, spec review
- **repomix** — PR feedback loop, contextual commits, thread resolution
- **claude-skills** — MoSCoW, Given-When-Then, INVEST validation, git workflow standards
