# Agentic Team for Product Development

A multi-agent pipeline powered by 7 specialist AI agents that takes a feature idea from problem validation through to deployed code. Built on Spec-Driven Development (SDD) — every requirement is traceable from spec (FR-XX, EC-XX) to test to production.

**See [PIPELINE.md](PIPELINE.md) for the full pipeline documentation.**

---

## The 7 Agents

| # | Agent | Role |
|---|---|---|
| 1 | **PM Agent** | Validates the problem, defines strategy, writes user stories, reviews the spec |
| 2 | **Feature Manager** | Reads codebase for feasibility, writes behavioral spec (FR/NFR/EC) + light design doc per US-XX |
| 3 | **Ticket Writer** | Detects platform + project type, creates parent + sub-issues via CLI per US-XX, updates PRD sprint board |
| 4 | **Backend Dev** | Detects backend stack, implements data models, migrations, services, API endpoints, and unit tests per backend sub-issue |
| 5 | **Frontend Dev** | Detects frontend stack, implements UI components, state management, API integration, and unit tests per frontend sub-issue |
| 6 | **QA Agent** | Writes integration, edge case, NFR, and E2E tests from FRD spec. Reviews code across 6 lenses. Gates handoff to Ship Agent. |
| 7 | **Ship Agent** | Pushes branch, creates structured PR, monitors CI, squash merges on green, verifies deploy with canary checks, reverts on critical failure, cleans up branches |

## Skills

| Skill | Purpose |
|---|---|
| **pm-frameworks** | PM frameworks applied only when they sharpen the output — RICE, JTBD, MoSCoW, Kano, HEART, ICE, North Star, OST, Competitive Teardown, OKR Cascade, INVEST, B=MAP, First Principles, 30 UX Laws |
| **spec-writing** | Spec writing references for Feature Manager — FRD quality bar with worked example, REST API design rules |
| **ticket-writing** | Ticket writing references for Ticket Writer — story quality checks (inline), GWT AC patterns, story splitting techniques |
| **backend-engineering** | Master routing skill for Backend Dev — maps detected stack and task type to specific external skills (framework patterns, migrations, security, testing) |
| **frontend-engineering** | Master routing skill for Frontend Dev — maps detected stack, state management, test framework, and task type to inline conventions and sub-skills (design, UX, code quality) |
| **qa** | Master routing skill for QA Agent — maps detected test framework and code review lens to specific sub-skills (testing guides, E2E frameworks, review references) |
| **github-flow** | Git + GitHub workflow for Ship Agent — branch, PR, CI, merge, and cleanup conventions |

---

## Installation

### First time setup

```bash
# 1. Clone this repo
git clone https://github.com/cherjiayan27/agentic-team-for-product-dev.git ~/agentic-team-for-product-dev

# 2. Create the agents directory (if it doesn't exist)
mkdir -p ~/.claude/agents

# 3. Symlink agents
ln -s ~/agentic-team-for-product-dev/agents/pm-agent.md ~/.claude/agents/pm-agent.md
ln -s ~/agentic-team-for-product-dev/agents/feature-manager.md ~/.claude/agents/feature-manager.md
ln -s ~/agentic-team-for-product-dev/agents/ticket-writer.md ~/.claude/agents/ticket-writer.md
ln -s ~/agentic-team-for-product-dev/agents/backend-dev.md ~/.claude/agents/backend-dev.md
ln -s ~/agentic-team-for-product-dev/agents/frontend-dev.md ~/.claude/agents/frontend-dev.md
ln -s ~/agentic-team-for-product-dev/agents/qa-agent.md ~/.claude/agents/qa-agent.md
ln -s ~/agentic-team-for-product-dev/agents/ship-agent.md ~/.claude/agents/ship-agent.md

# 4. Symlink skills
ln -s ~/agentic-team-for-product-dev/skills/pm-frameworks ~/.claude/skills/pm-frameworks
ln -s ~/agentic-team-for-product-dev/skills/spec-writing ~/.claude/skills/spec-writing
ln -s ~/agentic-team-for-product-dev/skills/ticket-writing ~/.claude/skills/ticket-writing
ln -s ~/agentic-team-for-product-dev/skills/backend-engineering ~/.claude/skills/backend-engineering
ln -s ~/agentic-team-for-product-dev/skills/frontend-engineering ~/.claude/skills/frontend-engineering
ln -s ~/agentic-team-for-product-dev/skills/qa ~/.claude/skills/qa

# github-flow is a globally installed skill — symlink it into the project for consistency
# (skip if already installed at ~/.claude/skills/github-flow)
ln -s ~/.claude/skills/github-flow ~/agentic-team-for-product-dev/skills/github-flow
```

### On another machine

Same steps. Clone once, symlink once, done.

### Updating

```bash
# On the laptop that made changes
cd ~/agentic-team-for-product-dev
git add . && git commit -m "update agents" && git push

# On the other laptop
cd ~/agentic-team-for-product-dev
git pull
# Symlinks pick up changes instantly — no re-linking needed
```

---

## Usage

### Auto-delegation (recommended)

In a normal Claude Code session, describe a task that matches an agent's description. Claude delegates to the right agent automatically via the Task tool.

```
"I want to validate a new feature idea"   →  PM Agent picks it up
"Write the FRD for US-01"                 →  Feature Manager picks it up
"Create tickets for the approved FRD"     →  Ticket Writer picks it up
"Implement the backend for US-01-BE"      →  Backend Dev picks it up
```

### Explicit invocation

Name the agent at the start of your message when you want a specific one:

```
"Use pm-agent to validate this new feature idea"
"Ask feature-manager to draft the FRD for US-01"
```

Agents are matched by the `description` field in their frontmatter, so clear, specific descriptions are what makes delegation work.

---

## Project Structure

```
agentic-team-for-product-dev/
  PIPELINE.md                              # Full pipeline documentation
  README.md                               # This file
  agents/
    pm-agent.md                            # PM agent (first-principles, 5-phase workflow)
    feature-manager.md                     # Feature Manager (feasibility + behavioral spec + design doc)
    ticket-writer.md                       # Ticket Writer (platform detection, CLI ticket creation, sprint board update)
    backend-dev.md                         # Backend Dev (stack detection, data models, migrations, services, API, unit tests)
    frontend-dev.md                        # Frontend Dev (stack detection, components, state, API integration, unit tests)
    qa-agent.md                            # QA Agent (spec-driven tests: FR/EC/NFR/E2E, 6-lens code review, gate)
    ship-agent.md                          # Ship Agent (push, PR, CI, squash merge, canary checks, revert, cleanup)
  skills/
    pm-frameworks/
      SKILL.md                             # PM frameworks — applied only when they sharpen the output
      references/
        rice.md                            # Reach x Impact x Confidence / Effort
        jtbd.md                            # Jobs to Be Done
        moscow.md                          # Must / Should / Could / Won't
        kano.md                            # Basic / Performance / Excitement
        ice.md                             # Impact x Confidence x Ease
        heart.md                           # Happiness / Engagement / Adoption / Retention / Task Success
        north-star-metric.md               # One metric capturing product value
        opportunity-solution-tree.md       # Outcomes → Opportunities → Solutions
        competitive-teardown.md            # SWOT, Porter's Five Forces, Blue Ocean
        okr-cascade.md                     # Company → Product → Team objectives
        invest.md                          # User story quality checklist
        b-map.md                           # BJ Fogg's Behavior Model
        first-principles.md                # Elon Musk first-principles + 5-step process
        ux-laws.md                         # 30 UX laws (cognitive, Gestalt, behavioral)
    spec-writing/
      SKILL.md                             # Spec writing references — when to read which reference
      references/
        frd-example.md                     # FR/NFR/EC quality bar with worked example
        rest-api-design.md                 # REST API design rules for light design docs
    ticket-writing/
      SKILL.md                             # Story quality checks (inline) + reference routing table
      references/
        ac-patterns.md                     # GWT acceptance criteria patterns for 10 feature types
        story-quality.md                   # Story splitting techniques (6 methods)
    backend-engineering/
      SKILL.md                             # Master routing table — stack → framework skill, task → cross-cutting skill
    frontend-engineering/
      SKILL.md                             # Master routing table — stack → conventions, state → conventions, task → cross-cutting skill
      core/                                # Frontend craft skills (refactoring-ui, web-typography, top-design, microinteractions, ios-hig, high-perf-browser, frontend-design, ui-ux-pro-max)
      ux-usability/                        # UX frameworks (ux-heuristics, design-everyday-things, hooked-ux, improve-retention, lean-ux)
      code-quality/                        # Code quality skills (clean-code, refactoring-patterns, software-design-philosophy, pragmatic-programmer, clean-architecture)
    qa/
      SKILL.md                             # Master routing table — test framework → testing skill, lens → review skill
    github-flow -> ~/.claude/skills/github-flow  # Git + GitHub workflow (symlink to global skill)
  templates/
    prd-template.md                        # PRD structure (problem, strategy, metrics, roadmap, sprint board)
    frd-template.md                        # FRD structure (feasibility, behavioral spec, design doc, decisions log)
    ticket-template.md                     # Ticket structure (parent issue, BE/FE sub-issues, single-ticket projects)
```

---

## Product-Agnostic

All agents are product-agnostic. They detect the project's stack, conventions, and ticket platform from the codebase. Technology-specific knowledge lives in the project's own skills, not in agent definitions. The same agents work for any product — Go, Python, TypeScript, Swift, etc.

---

## Attribution

Combined from:
- **Spec-Driven Development** — behavioral spec format (FR/NFR/EC), debug the spec not the code
- **gstack** — demand validation, anti-sycophancy, review army
- **everything-claude-code** — PRP workflow, interactive PRD, multi-agent orchestration
- **superpowers** — hard gate (no implementation before spec), subagent-driven development
- **repomix** — PR feedback loop, contextual commits, thread resolution
- **claude-skills** — MoSCoW, Given-When-Then, INVEST, PM frameworks
