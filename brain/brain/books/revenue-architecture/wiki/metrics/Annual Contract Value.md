---
type: metric
tags: [acv, contract-value, metric]
sources: ["[[07-mathematical-model]]"]
updated: 2026-04-18
---

# Annual Contract Value

## Definition

The annualised value of a single commercial contract with a single customer. Also called **ACV**. Used as the per-deal unit of measurement in acquisition-side calculations, and as the bridge between unit-based acquisition metrics and revenue-based retention metrics.

## Formula

```
ACV = Total Contract Value / Contract Length in Years
```

For a $48,000 24-month contract: ACV = $24,000.

## Where it appears in the Growth Formula

```
ARR(commit) = Commits × ACV
```

In §7.1.3 example: 2.85 commits × $40,000 ACV = $113,793 monthly ARR(commit).

## ACV vs ARR

- **ACV** — per-deal / per-customer. Unit of the [[Acquisition]] side of the [[Bowtie]].
- **[[Annual Recurring Revenue]]** — aggregate across the customer base. Unit of the [[Retention]] / [[Expansion]] side.
- The transition between units ↔ revenue (see [[Two Domains of the Bowtie]]) typically happens by multiplying commits × ACV.

## Benchmark context from Ch 5 / Ch 7

Used to anchor [[Win Rate]] benchmarks by [[Monetization Strategy]]:

- Perpetual enterprise: ACV in the $100K–$1M+ range, 1:3 win rate
- Annual SaaS: ACV $10K–$100K, 1:5 win rate
- Monthly SaaS: ACV $1K–$10K, 1:6–7 win rate

## Related

- [[Annual Recurring Revenue]]
- [[Growth Formula]]
- [[Win Rate]]
- [[Two Domains of the Bowtie]]
- [[Bowtie]]

## Sources

- [[07-mathematical-model]] — §7.1.3 (Formula 7-7a, numeric examples), §7.2 (Tables 7.2, 7.3)
