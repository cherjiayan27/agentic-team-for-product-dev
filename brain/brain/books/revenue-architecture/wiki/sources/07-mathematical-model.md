---
type: source
tags: [revenue-architecture, design, mathematical-model, metrics]
sources: []
updated: 2026-04-18
---

# Chapter 07 — The Mathematical Model

**Source:** `raw/markdown/07-mathematical-model.md` (original PDF: `raw/pdf-chapters/07-mathematical-model.pdf`, book pages 194–232)

Includes Chapter 7 proper (pp. 194–230) and Part II summary (pp. 231–232).

## Thesis

A recurring revenue business runs on **nonlinearity**, not linearity. Small incremental changes in conversion rates or retention rates compound into **disproportionate** changes in revenue — in both directions. The two sides of the [[Bowtie]] operate in fundamentally different mathematical domains: [[Acquisition]] is an **open-loop system** governed by multiplication of conversion rates (attrition); [[Retention]] and [[Expansion]] form a **closed-loop system** governed by accumulation over time. Understanding which domain you're operating in — and modelling it explicitly with a [[Growth Formula]] — is the difference between engineering hypergrowth and stumbling into a crash.

## Key claims

- **Two mathematical notations underpin the Bowtie** (Figure 7.1):
  - Acquisition = Sigma (Σ) of products — repeated multiplication of conversion rates across actions
  - Retention and Expansion = Sigma (Σ) of accumulation over time
- **Nonlinearity** emerges when improvements compound multiplicatively. Linear vs exponential: `y = 1.15 × 6 = 6.9` vs `y = 1.15⁶ = 2.3` (Formulas 7-3, 7-4). A small change (Δx) produces a disproportionate change (Δy).
- **Law of Diminishing Returns in Acquisition.** Adding more meetings or more emails beyond a threshold *decreases* win rate. Example: at 85% CR per meeting, 12 meetings → 2.85 wins; at 90% CR per meeting, same 12 meetings → 5.6 wins (raising CR doubles revenue); but reducing meetings from 12 → 11 at 90% CR → 6.3 wins (fewer meetings can help).
- **Acquisition volatility.** Acquisition is an **open-loop system**. Marginal 0.5–1% declines across 5 conversion rates compound into a 50%+ drop in ARR (Table 7.1: $41,310 → $19,094 across 5 quarters).
- **Retention/Expansion stability.** Retention/expansion is a **closed-loop system** — self-correcting feedback. Nonlinear but stable because time and repeated customer commitment create damping.
- **GRR and NRR are the core of the hypergrowth engine.** [[Gross Revenue Retention]] measures retention without expansion; [[Net Revenue Retention]] adds expansion. Both follow hyperbolic curves; NRR > 1 produces exponential accumulation. Figure 7.9: over 10 years, NRR=1.1 produces meaningful compounding that becomes dominant; NRR ≥ 1.25 produces disproportionate hypergrowth (Figure 7.10).
- **LTV = Σ ARR(t)** over the customer's lifetime. Example: $100K initial ARR at NRR=1.10 over 5 years = $610,510 LTV (Formula 7-1b).
- **17 / 83 rule:** year 1 ARR typically represents only ~17% of a customer's 5-year [[Lifetime Value]]. 83% depends on the seller continuing to deliver [[Recurring Impact]].
- **[[Two Domains of the Bowtie]]** (Figure 7.11):
  - Open loop vs closed loop
  - Units vs revenue
  - Frequency vs time (inverse relationship)
  - Attrition vs accumulation
  - Go fast vs go long
- **CSM vs SM layoff thought experiment.** Cutting a CSM (to save $100K) can cost far more revenue than cutting a Sales Manager, because the CSM's output compounds into NRR over years.
- **Growth Formula** is a mathematical depiction of a GTM motion: `ARR(commit) = Visitors × ∏ CR[n] × List Price × (1-discount)`. Enables scenario analysis (discount impact, conversion-rate sensitivity, downturn simulation).
- **Unit Economics** are shorthand for the Growth Formula's outputs, e.g. "100 leads → $10K ARR → $100K LTV over 5 years."
- **Combining Mathematical and Revenue Models (Table 7.7):** a $400/yr annual subscription with 10% NRR compounds to $3,795 LTV over 7 years — **90% more than a $2,000 one-time ownership deal**. This is why the subscription model dominates enterprise software.
- **Netflix case study** (Figure 7.14): small, sporadic price hikes + package diversification + advertising tier mask an exponential price-increase curve.
- **Part II summary:** Revenue Model → Data Model (Bowtie) → Mathematical Model (Growth Formula + unit economics). Together they design the revenue factory. Dynamic models (Operating, Growth, GTM) are built *on top of* this static foundation.

## Frameworks introduced

- [[Growth Formula]] — the mathematical depiction of a GTM motion
- [[Mathematical Model]] *(promoted from stub)* — the chapter's framework page

## Concepts introduced

- [[Nonlinearity]] — the chapter's organizing principle
- [[Compound Impact]] — repeated multiplication producing disproportionate outcomes
- [[Two Domains of the Bowtie]] — open/closed loop, units/revenue, freq/time, attrition/accumulation, fast/long
- [[Hypergrowth]] — the nonlinear growth regime enabled by NRR > 1
- [[Unit Economics]] — shorthand for Growth Formula outputs
- [[Scenario Analysis]] — running what-if simulations over the Growth Formula
- [[Bowtie]] *(stub — full treatment in Ch 6)*

## Metrics introduced

- [[Gross Revenue Retention]] (GRR) — formula
- [[Net Revenue Retention]] (NRR) — formula
- [[Monthly Recurring Revenue]] (MRR) — base unit for GRR/NRR calculations
- [[Lifetime Value]] (LTV) — formula
- [[Annual Contract Value]] (ACV) — per-deal metric

## Metrics updated

- [[Annual Recurring Revenue]] — now has formal formula context
- [[Win Rate]] — added Ch 7 mathematical basis (win rate = product of per-meeting conversion rates)
- [[Revenue Velocity]] — added Ch 7 note on nonlinearity in acquisition

## Notable diagrams

- **Figure 7.1** — Sigma vs Pi mathematics across the Bowtie
- **Figure 7.2** — Linear vs exponential impact (`y = x·n` vs `y = xⁿ`)
- **Figure 7.4** — Nested conversion rates within a single sub-system (meetings)
- **Figure 7.5** — Attrition: exponential decrease in success rate with more actions
- **Figure 7.6** — Acquisition as an open-loop system (runaway)
- **Figure 7.7** — Retention/Expansion as closed-loop with LTV accumulation
- **Figure 7.8** — GRR and NRR positioned on the Bowtie / Data Model
- **Figure 7.9** — GRR (0.9ˣ) vs NRR (1.1ˣ) curves
- **Figure 7.10** — NRR nonlinearity at different rates (1.00, 1.10, 1.15, 1.20, 1.25)
- **Figure 7.11** — Two Domains of the Bowtie (Acquisition vs Retention/Expansion)
- **Figure 7.12** — Frequency vs Time domain characteristics
- **Figure 7.13** — Three monetization strategies' LTV over 7 years
- **Figure 7.14** — Netflix price hikes visualized as cumulative exponential curve
- **Figure 7.15** — Simplified recap

## Section map

- **7.1 The Mathematical Model Explained** — nonlinearity fundamentals
  - 7.1.1 Elements of Accelerated Growth (Sigma, Pi)
  - 7.1.2 Nonlinearity
  - 7.1.3 Nonlinearity in Acquisition (open-loop, diminishing returns, volatility)
  - 7.1.4 Nonlinearity in Retention and Expansion (closed-loop, GRR, NRR, LTV)
  - 7.1.4 (dup heading) Two Domains of the Bowtie
- **7.2 Growth Formula and Unit Economics** — the core framework; scenario analyses
- **7.3 Combining the Mathematical and Revenue Models** — 3-model LTV comparison; Netflix case
- **7.4 Exercises** — build your own Growth Formula
- **7.5 Recap**
- **Part II Summary** — integrates Revenue, Data, Mathematical; introduces Part III

## My notes

*Reserved for user.*
