---
type: metric
tags: [cmgr, growth-rate, monthly]
sources: ["[[09-growth-model]]"]
updated: 2026-04-18
---

# CMGR

## Definition

**Compound Monthly Growth Rate.** Smoothed average monthly growth rate that accounts for compounding across multiple months. Preferred over raw month-over-month growth rate because MRR growth is volatile.

## Formula

```
CMGR = (Revenue_end / Revenue_begin)^(1/months) − 1
```

For a 12-month period:

```
CMGR = (Revenue_end / Revenue_begin)^(1/12) − 1
```

## Worked example

Starting year: $10M ARR. Ending year: $20M ARR.

```
CMGR = (20/10)^(1/12) − 1 = 5.95%
```

## Benchmarks for startups (from Table 9.2)

| Growth name | Annual rate | CMGR |
|---|---|---|
| Normal | 0–10% | 0.8% |
| Rapid | 10–20% | 1.5% |
| Hypergrowth | 20–40% | 2.7% |
| Double | 100% | 5.9% |
| Triple | 200% | 9.9% |
| **Blitzscaling** | **>1000%** | **>21.2%** |

Startups seeking Series A/B funding: **CMGR >10%** is considered healthy. Roughly equates to 3× YoY.

## When to use CMGR vs CAGR

- **CMGR** — day-to-day internal business analysis. Monthly trends. Running the business.
- **[[CAGR]]** — investor relations, benchmarking over several years. Multi-year annual-equivalent smoothing.

## Related

- [[CAGR]]
- [[Annual Recurring Revenue]]
- [[Monthly Recurring Revenue]]
- [[Growth Model]]
- [[T2D3 Growth Trend]]

## Sources

- [[09-growth-model]] — §9.1.2 (Formula 9.2, 9.2a; Table 9.2)
