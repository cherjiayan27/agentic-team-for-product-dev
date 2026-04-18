---
type: concept
tags: [compound, nonlinearity, gains]
sources: ["[[07-mathematical-model]]"]
updated: 2026-04-18
---

# Compound Impact

## Definition

The effect by which marginal improvements (or declines) at multiple points in a process multiply rather than add, producing disproportionate total outcomes. The specific mechanism behind [[Nonlinearity]] in the recurring revenue engine.

## Two shapes

- **Multiplicative within a sub-system** (acquisition side): `y = x × CR₁ × CR₂ × CR₃ × ... × CRₙ`. A 1% lift at each of 5 stages compounds to ~5.1% total — slightly more than the 5% sum.
- **Accumulative over time** (retention/expansion side): `ARR(t) = ARR(0) × NRR^t`. Year 1 and Year 5 are very different revenues if NRR > 1.

## Practical magnitudes (from §7.1.3 examples)

- 20 leads × 85% per-meeting CR over 12 meetings = **2.85 wins / $113,793 ARR**
- 20 leads × **90%** per-meeting CR over 12 meetings = **5.6 wins / $225,944 ARR** — a 5-percentage-point meeting-CR improvement **doubles** revenue.
- 20 leads × 90% CR over **11** meetings = **6.3 wins / $251,049 ARR** — cutting one meeting adds ~12% more revenue.

## The marginal-gains strategy

"Make 10% improvements across the board" — slightly better leads, slightly shorter emails, slightly better discovery calls, slightly less discount, slightly faster adoption. Small gains at every stage produce compound results far exceeding a single large improvement at one stage.

## Related

- [[Nonlinearity]]
- [[Growth Formula]]
- [[Law of Diminishing Returns]]
- [[Two Domains of the Bowtie]]
- [[Net Revenue Retention]]

## Sources

- [[07-mathematical-model]] — §7.1.3 (Formulas 7-7a through 7-7e)
