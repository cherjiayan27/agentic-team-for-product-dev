---
type: framework
tags: [growth-formula, mathematical-model, gtm]
sources: ["[[07-mathematical-model]]"]
updated: 2026-04-18
---

# Growth Formula

## Definition

A mathematical depiction of a single GTM motion — an equation that maps inputs (e.g. visitors, leads) through conversion rates and revenue parameters to outputs (commits, ARR, LTV). One per motion. Reveals cause and effect, enables [[Scenario Analysis]], and yields [[Unit Economics]].

## Canonical form (acquisition side, inbound motion)

```
ARR(commit) = Visitors × ∏ CR[n] × List Price × (1 − Discount)
            n=1

where:
  CR1 = visit-to-lead conversion
  CR2 = lead-to-opportunity conversion
  CR3 = qualified-opportunity filter
  CR4 = win rate (opportunity → commit)
  CR5 = 1 - discount (normalized sales price multiplier)
```

## Worked example (Table 7.2, NewCo inbound motion)

- 928 visitors/month → 12% CR1 → 111 leads → 15% CR2 → 17 opps → 84.5% CR3 → 14 qualified opps → 26% CR4 win rate → 3.7 commits at $24K list price × (1 − 23.3% discount) = **$67,555 ARR/month**

Normalized to a **single commit**: 253 visitors → 30 leads → 5 opps → 4 qualified → 1 win → $18,408 ARR.

## Expansion side (Table 7.6)

Project the commit forward through NRR across years:

```
LTV = Σ ARR(t)   for t = 1..N
      t=1

with ARR(t) = ARR(t-1) × NRR(t)
and  NRR = Retention × Expansion (normalized)
```

Example: $18,408 first-year ARR with varying per-year NRR (99.96%, 121.6%, 105.28%, 102.6%) over 5 years → **LTV(5Y) = $106,909**.

## Why it matters

- Converts growth from narrative ("we need more leads") to engineering ("a 5% per-stage improvement yields X% more ARR").
- Exposes **nonlinearity**: a marginal 5% decline across 5 conversion rates compounds into a 50%+ ARR decline (Table 7.1).
- Enables [[Scenario Analysis]]:
  - What if we eliminate discounts? Break-even win rate = current × (ARR_undiscounted / ARR_discounted)
  - What if conversion rates drop 5% across the board? (Simulates downturn)
  - What if NRR improves by 5%? (Simulates improvement program)
- Used for **scalability thesis** — identifying the top 3 metrics that drive growth for a specific motion.

## Rules of application

- **One Growth Formula per GTM motion.** Don't average across motions.
- **Normalize first.** Sales price = list × (1 − discount). Win rate = wins / qualified opportunities, not wins / raw opportunities.
- **Analyze by cohort.** GRR/NRR and usage metrics must be calculated on cohorts with matching GTM motion and timeframe.
- **MRR is the recommended unit** for GRR/NRR, but ARR works if used consistently.

## Relationship to other layers

- **Above:** [[Operating Model]] uses Growth Formula outputs to plan capacity (headcount, campaigns, budget).
- **Below:** [[Data Model]] (Bowtie) provides the canonical variable names (VM1–VM9, CR1–CR8). [[Revenue Model]] provides the sales price and win-rate benchmarks.
- **17 / 83 rule:** first-year ARR is typically only ~17% of 5-year LTV. 83% depends on post-sale performance — a Growth Formula that stops at the commit is missing the majority of the value.

## Related

- [[Mathematical Model]]
- [[Unit Economics]]
- [[Scenario Analysis]]
- [[Nonlinearity]]
- [[Two Domains of the Bowtie]]
- [[Bowtie]]
- [[Win Rate]]
- [[Net Revenue Retention]]
- [[Lifetime Value]]

## Sources

- [[07-mathematical-model]] — §7.2 (Tables 7.2–7.6), exercises 7.1–7.7
