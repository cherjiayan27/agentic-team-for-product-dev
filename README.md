# Agentic Team for Product Development

A multi-agent pipeline powered by 7 specialist AI agents that takes a feature idea from problem validation through to deployed code. Built on Spec-Driven Development (SDD) — every requirement is traceable from spec (FR-XX, EC-XX) to test to production.

**See [PIPELINE.md](PIPELINE.md) for the full pipeline documentation.**

---

## The 7 Agents

| # | Agent | Role |
|---|---|---|
| 1 | **PM Agent** | Validates the problem, defines strategy, writes user stories, reviews the spec |
| 2 | **Feature Manager** | Translates user stories into FR/NFR/EC per story, assesses codebase feasibility |
| 3 | **Ticket Writer** | Decomposes approved spec into tickets (any platform) |
| 4 | **Backend Dev** | Implements API, services, data models, unit tests |
| 5 | **Frontend Dev** | Implements UI, state management, unit tests |
| 6 | **QA Agent** | Writes integration + E2E tests from the spec, code review |
| 7 | **Ship Agent** | Push, PR, CI, merge, post-deploy verification, cleanup |

## Skills

| Skill | Purpose |
|---|---|
| **pm-frameworks** | 10 optional PM frameworks (RICE, JTBD, MoSCoW, Kano, HEART, ICE, North Star, OST, Competitive Teardown, OKR) |
| **elon-musk-advisor** | Standalone first-principles advisor for stress-testing any idea |

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

# 4. Symlink skills
ln -s ~/agentic-team-for-product-dev/skills/pm-frameworks ~/.claude/skills/pm-frameworks
ln -s ~/agentic-team-for-product-dev/skills/elon-musk-advisor ~/.claude/skills/elon-musk-advisor
```

As more agents are added, symlink each one:

```bash
ln -s ~/agentic-team-for-product-dev/agents/feature-manager.md ~/.claude/agents/feature-manager.md
ln -s ~/agentic-team-for-product-dev/agents/qa-agent.md ~/.claude/agents/qa-agent.md
# ... etc
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

### Start a session with a specific agent

```bash
claude --agent pm-agent
```

### Or let Claude delegate automatically

In a normal Claude Code session, describe a task that matches an agent's description. Claude delegates to the right agent automatically.

```
"I want to validate a new feature idea"  →  PM Agent picks it up
```

---

## Project Structure

```
agentic-team-for-product-dev/
  PIPELINE.md                              # Full pipeline documentation
  README.md                               # This file
  agents/
    pm-agent.md                            # PM agent (first-principles, 5-phase workflow)
  skills/
    pm-frameworks/
      SKILL.md                             # 10 optional PM frameworks
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
    elon-musk-advisor/
      SKILL.md                             # First-principles advisor (standalone)
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
