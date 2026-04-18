---
type: concept
tags: [interoperability, operating-model, breakpoint-10]
sources: ["[[09-growth-model]]", "[[10-go-to-market-model]]"]
updated: 2026-04-18
---

# Interoperability

## Definition

The 10th [[12 Revenue Breakpoints|revenue breakpoint]]. The ability of multiple GTM motions to run coherently within a single organisation — sharing terminology, data structures, tooling, and handoff conventions. Without interoperability, each new motion fragments the stack and multiplies cost.

## The problem at scale

By $20–50M ARR most companies have ≥2 GTM motions. Without an explicit [[Operating Model]]:

- **Terminology drift.** What's called MQL in inbound = PQL in PLG = MQA in enterprise. If teams don't know this, reporting is noise.
- **Data structure drift.** Different funnels per motion; cross-motion analysis impossible.
- **Tool stack fragmentation.** Each motion buys its own tools; integration debt accumulates.
- **Handoff failures.** A PLG user ready to expand into enterprise goes cold because no one owns the transition.

## Why PLG is a canonical interoperability case

[[Product-Led Growth]] naturally creates an interoperability challenge: an individual PLG user becomes part of a team → team becomes a department → department becomes a company-wide deal. Each transition is a handoff between different touch motions ([[No Touch GTM Motion]] → [[Medium Touch GTM Motion]] → [[High Touch GTM Motion]]).

Atlassian (§10.2.5) solved this via developer-led growth that natively blends No/Low/Medium/High Touch motions as a unified system.

## What interoperability requires

1. **Standardised [[Data Model]] / [[Bowtie]]** — VM/CR/Δt naming consistent across motions
2. **Defined handoffs** — explicit rules for when a customer transitions between motions (not ad hoc)
3. **Shared tooling backbone** — one CRM, one customer data platform, one analytics layer
4. **Role definitions** — clear ownership during transitions (is the PLG user still a CSM's customer or now a Field Sales target?)

## Failure mode: "Everything, Everywhere, All at Once" (§10.2.2)

A $20–50M ARR company with no operating model ends up with:
- Centralised ABM targeting 100 companies
- SDRs writing their own email cadences
- Junior sellers cold-calling CxOs without domain knowledge
- Helpdesk that can't serve enterprise SLA
- A chatbot routing leads to whoever's available (usually the least-qualified person)

The result: every motion runs inefficiently and costs rise without corresponding revenue.

## Related

- [[Operating Model]]
- [[GTM Model]]
- [[5 Touch GTM Motions]]
- [[Data Model]]
- [[12 Revenue Breakpoints]]
- [[Product-Led Growth]]

## Sources

- [[09-growth-model]] — §9.2.10 (Breakpoint 10)
- [[10-go-to-market-model]] — §10.1.6 "Engine" discussion, §10.2.1, §10.2.2
