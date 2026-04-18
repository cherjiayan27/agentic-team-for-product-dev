---
type: metric
tags: [mrr, recurring-revenue, metric]
sources: ["[[07-mathematical-model]]"]
updated: 2026-04-18
---

# Monthly Recurring Revenue

## Definition

The monthly equivalent of a company's [[Recurring Revenue]] — the revenue the company would generate in a month if its current subscription base continued unchanged. Typically annualised to [[Annual Recurring Revenue|ARR]] = MRR × 12.

## Formula

```
MRR = sum of monthly-equivalent subscription value across all active customers
```

Multi-year and annual contracts are typically divided by their term to derive the monthly-equivalent value.

## Why it matters

- **Base unit for GRR and NRR calculations.** Both [[Gross Revenue Retention]] and [[Net Revenue Retention]] are natively MRR-based — see the formulas in those pages.
- **Finer-grained than ARR.** Catches mid-month changes (new signups, churns, expansions) that an annual snapshot misses.
- **Jacco's recommendation:** use MRR (not ARR) when computing retention metrics, but be consistent across the entire customer journey and all GTM motions.

## MRR sub-components (used in retention math)

- **MRR_start** — MRR at the beginning of the period
- **MRR_expansion** — new MRR from upsells, cross-sells, and price increases on existing customers
- **MRR_contraction** — MRR lost to downgrades on still-active customers
- **MRR_churn** — MRR lost from customers who cancelled entirely

## Relationship to ARR

- `ARR = MRR × 12`
- ARR is the headline-valuation metric.
- MRR is the operational metric that feeds it.

## Related

- [[Annual Recurring Revenue]]
- [[Gross Revenue Retention]]
- [[Net Revenue Retention]]
- [[Recurring Revenue]]
- [[Mathematical Model]]

## Sources

- [[07-mathematical-model]] — §7.1.4 (Formulas 7-8, 7-9; worked examples), Figure 7.8
