---
type: metric
tags: [cagr, growth-rate, annual]
sources: ["[[09-growth-model]]"]
updated: 2026-04-18
---

# CAGR

## Definition

**Compound Annual Growth Rate.** Smoothed annual growth rate over multiple years. Accounts for compounding; eliminates single-year noise. The metric most commonly cited in investor communications and long-term benchmarking.

## Formula

```
CAGR = (Revenue_end / Revenue_begin)^(1/years) − 1
```

## Worked example

Starting: $10M ARR. Ending: $100M ARR. Period: 5 years.

```
CAGR = (100/10)^(1/5) − 1 = 58.5%
```

## Benchmarks

From Table 9.2, approximated to CAGR:

| Growth name | CAGR (approx) |
|---|---|
| Normal | 0–10% |
| Rapid | 10–20% |
| Hypergrowth | 20–40% |
| Double | ~100% YoY sustained = T2D3 territory |
| Triple | ~200% YoY = very-early Startup |
| Blitzscaling | >1000% = exceptional |

**CAGR of 58.5%** over 5 years ($10M → $100M) is attractive to late-stage investors.

## CAGR vs CMGR vs Annual Growth Rate

- **Annual Growth Rate** — single-period: (End − Begin) / Begin × 100%. Volatile.
- **[[CMGR]]** — monthly-equivalent smoothed. For day-to-day operations.
- **CAGR** — annual-equivalent smoothed over multiple years. For investor relations.

## Related

- [[CMGR]]
- [[Annual Recurring Revenue]]
- [[Growth Model]]
- [[T2D3 Growth Trend]]
- [[Denominator Effect]]

## Sources

- [[09-growth-model]] — §9.1.2 (Formula 9.2b)
