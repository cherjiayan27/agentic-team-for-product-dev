---
type: framework
tags: [data-model, bowtie, lifecycle]
sources: ["[[05-revenue-model]]", "[[06-data-model]]"]
updated: 2026-04-18
---

# Data Model

## Definition

Layer 2 of the [[Six-Layer Model Stack]] — the analytical/empirical layer. Structured as a **[[Bowtie]]** covering the full customer lifecycle from awareness through lifetime value. Extends the classic marketing-and-sales funnel (which ends at the sale) into post-sale stages where recurring revenue is actually earned.

## Why it exists

The classic AIDA funnel (1898) was built for the **ownership** monetization model — the purchase is the terminal event. A recurring revenue business earns most of its value *after* the commit, through retention and expansion. Modelling only the pre-sale funnel captures at most ~17% of a customer's lifetime value (see [[Lifetime Value]]'s 17/83 rule).

## Structure

Two sides, nine stages, two layers:

### Left side — Acquisition
1. Awareness
2. Education
3. Selection
4. **Prioritization** (new stage in the Bowtie — see below)
5. Mutual Commit

### Right side — Retention & Expansion
6. Onboarding
7. Retention
8. Expansion

Prioritization is a **strategic checkpoint** — the Bowtie-native stage that ensures buyer and seller align on desired impact before the most expensive resources (people, demos, POCs) are engaged.

## The Data Structure layer

On top of the Data Model sits the [[Data Structure]]:

- **Volume Metrics (VM1–VM9)** at each stage
- **Conversion Metrics (CR1–CR8, CR9 reserved)** between stages
- **Time Metrics (Δt1–Δt8)** between stages
- **Performance Metrics** across domains

See [[Bowtie Metrics]] for the full mapping.

## Value / Impact balance

Jacco visualises the Bowtie tipping under different [[Monetization Strategy|monetization strategies]]:

- **[[Ownership]]** tips the Bowtie left (value-heavy) — seller emphasises value proposition, buyer bears impact realisation
- **[[Subscription]]** stays balanced — seller promises value, delivers impact, shares the journey
- **[[Consumption]]** tips the Bowtie right (impact-heavy) — seller delivers impact continuously, bears most risk

## Why standardisation matters

Terms differ across GTM motions:
- VM2 = MQL (inbound), PQL (PLG), MQA (enterprise)
- VM4 = SAL (inbound), Qualified Opportunity (enterprise), PQA (PLG)

The standardised VM/CR/Δt numbering decouples the measurement structure from the motion-specific vocabulary, enabling apples-to-apples comparison, AI-driven closed loops, and benchmarking across the industry.

## Rules

- **Enforce adherence after agreement.** Changes require a formal change-request process reviewed by a Revenue-Architecture-certified person because changes propagate through all upper layers.
- **Archive the Data Model** — dashboards, goal-setting, performance measurement, AI integration all depend on the archive.
- **Cohort-based analysis.** Always slice by GTM motion and signup timeframe.

## Role in the stack

- Above: feeds the [[Mathematical Model]] (Growth Formula uses VM/CR variable names)
- Below: sits on the [[Revenue Model]] (monetization strategy affects Bowtie tilt)

## Related

- [[Six-Layer Model Stack]]
- [[Bowtie]]
- [[Data Structure]]
- [[Bowtie Metrics]]
- [[Benchmark Model]]
- [[Value and Impact]]
- [[Mathematical Model]]
- [[Revenue Model]]

## Sources

- [[05-revenue-model]] — Part II intro (Layer 2 positioning)
- [[06-data-model]] — whole chapter
