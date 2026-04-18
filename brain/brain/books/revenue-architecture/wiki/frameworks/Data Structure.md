---
type: framework
tags: [data-structure, metrics, measurement]
sources: ["[[06-data-model]]"]
updated: 2026-04-18
---

# Data Structure

## Definition

The standardised measurement layer laid on top of the [[Data Model]] / [[Bowtie]]. Every stage or sub-stage of the customer journey is treated as a **function with an input and an output**. Three metric families describe that function: [[Bowtie Metrics|Volume, Conversion, and Time]]. A fourth (Performance) combines them across domains.

## Core principle

```
Input (Volume) → SYSTEM or SUB-SYSTEM → Output (Volume)

Conversion = Output / Input
Time       = how long input takes to become output (waiting time, not action time)
```

## Metric families

| Family | Notation | Definition |
|---|---|---|
| Volume Metrics | VM[n] | Quantity at a point in the journey — counts on the left side, revenue on the right |
| Conversion Metrics | CR[n] | Ratio of output to input between stages |
| Time Metrics | Δt[n] | Waiting time between stages (not action duration) |
| Performance Metrics | — | Cross-domain ratios (e.g. MRR committed / deals committed = average price) |

Full mapping to the Bowtie lives in [[Bowtie Metrics]].

## Why this structure matters

- **Decouples nomenclature from tool.** MQL, PQL, MQA all map to VM2 regardless of source system.
- **Enables comparison across GTM motions.** A High Touch win rate and a PLG conversion rate can be compared because both sit at CR4.
- **Clarifies where to measure sales cycle.** Sales cycle = Δt4 (time from qualified opp to mutual commit), not an ambiguous "how long does selling take?"
- **Makes benchmarking possible.** See [[Benchmark Model]] — benchmark data is meaningful only if everyone normalises to the same structure.
- **Unlocks AI.** Closed-loop systems and optimisation require a canonical schema. That's what the Data Structure provides.

## Response-time emphasis

Time Metrics measure **waiting time**, not action time. Writing an invite email takes minutes; getting a reply can take days. Δt is the latter. Response time on inbound (Δt1) and onboarding (Δt6) are particularly outsized — faster response correlates strongly with both conversion and retention.

## Operational rules

- Number volume metrics starting at VM1, conversion metrics at CR1, etc.
- Keep the definitions tight, motion-agnostic, and archived.
- Changes require a change-request process because they propagate into the [[Mathematical Model]] and [[Growth Formula]].

## Related

- [[Data Model]]
- [[Bowtie]]
- [[Bowtie Metrics]]
- [[Benchmark Model]]
- [[Growth Formula]]

## Sources

- [[06-data-model]] — §6.2 (Figure 6.2), Tables 6.1–6.3
