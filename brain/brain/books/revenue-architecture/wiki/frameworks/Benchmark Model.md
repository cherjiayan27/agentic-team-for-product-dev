---
type: framework
tags: [benchmark, trendline, measurement]
sources: ["[[06-data-model]]"]
updated: 2026-04-18
---

# Benchmark Model

## Definition

The benchmarking methodology layered on top of the [[Data Model]] / [[Bowtie]]. Uses standardised [[Bowtie Metrics]] to compare a business's performance against (a) industry peers and (b) its own historical performance via [[Trendline]] analysis.

## Two modes

### 1. Industry benchmark (Table 6.5)

Aggregated conversion rates across hundreds of companies, indexed by **ACV tier**:

| ACV | CR1 | CR2 | CR3 | CR4 | CR5 | CR6 | CR7 (GRR) | CR8 (Expansion) |
|---|---|---|---|---|---|---|---|---|
| Up to $1K | 5% | 10% | 65% | 15% | 90% | 90% | 90% | 5% |
| Up to $5K | 7% | 12% | 70% | 17% | 85% | 92% | 92% | 10% |
| Up to $15K | 8% | 15% | 80% | 20% | 81% | 93% | 95% | 15% |
| Up to $50K | 9% | 18% | 90% | 25% | 80% | 94% | 96% | 20% |
| Up to $150K | 10% | 20% | 95% | 30% | 78% | 98% | 97% | 25% |
| Over $150K | — | — | 100% | 35% | 74% | 99% | 98% | 30% |

*Sample size n=868 across 2016–2022.*

Industry benchmarks are useful for **sketching operational plans** (headcount, lead targets, campaign sizes) but **not precise enough** to operate a recurring revenue factory against.

### 2. Self-benchmark via trendline

More reliable than peer comparison, because it's apples-to-apples against the business's own data. Use LTM (last twelve months) windows. See [[Trendline]].

## Why peer benchmarking is often misleading

Companies comparing themselves to peers in the same sphere typically find large discrepancies because the peer's data isn't normalised to the same model. Without a shared [[Data Structure]], the comparison is noise. Self-benchmarking via trendlines avoids this.

## Canonical use case (§6.3.1)

**Scenario:** Enterprise SaaS, $80K ACV, no SDRs, field reps generate 1/3 of leads, 2/3 via ABM.
- Benchmark CR3 × CR4 (combined because no SDRs) = 95% × 30% = 28.5%
- Rep with $480K quota needs 6 commits/year
- With 28.5% conversion: 21 opportunities required per year
- Rep self-sources 7 opps; ABM delivers the remaining 14
- ABM conversion CR1 × CR2 = 10% × 20% = 2%
- Therefore marketing must prospect 700 accounts/year *per salesperson* to produce the 14 ABM opps

Benchmarks sketch feasibility before costing out the plan.

## Related

- [[Data Model]]
- [[Bowtie Metrics]]
- [[Trendline]]
- [[Data Structure]]

## Sources

- [[06-data-model]] — §6.3 (Table 6.5, §6.3.1 worked example)
