---
type: metric
tags: [engagement, metric, amplitude]
sources: ["[[04-engagement]]"]
updated: 2026-04-18
---

# Engagement Rate

## Definition

The **percentage change in the number of active users over a period of time**. Measures how "sticky" a product is. Distinct from raw DAU/MAU counts — engagement rate captures growth or decline in the active base.

## Formula

```
Engagement Rate (monthly) = (MAU_end − MAU_start) / MAU_start × 100%
```

Also calculable on Daily (DAU) or Weekly (WAU) bases.

## Benchmarks

See [[Engagement Benchmarks]].

Top 10%: **7.5% monthly / 138% annual**
Median: **<1% monthly**
Enterprise top 10%: **6.5% monthly**

## Critical limitation: doesn't predict retention

Amplitude's Figure 10 shows engagement growth has **no correlation with retention**. High engagement growth can coexist with poor retention — users show up, then leave. This is the [[Leaky Bucket Problem]] at the engagement layer.

**Implication:** pair Engagement Rate with [[User Retention]] always. Both growing = healthy. Engagement alone growing = vanity.

## Operational use

- **Cohort-based** — break down engagement by cohort to see if newer cohorts are more or less engaged
- **Feature-level** — which features drive engagement? (see Engagement Matrix concept)
- **Usage interval** — align engagement measurement with natural [[Product Usage Interval]]
- **Combined with activation** — activation → engagement → retention is the proper funnel

## Related

- [[DAU]] — daily-level metric
- [[MAU]] — monthly-level metric
- [[Engagement Benchmarks]]
- [[Product Usage Interval]]
- [[Leaky Bucket Problem]]
- [[User Retention]]
- [[Activation Rate]]

## Sources

- [[04-engagement]] — Amplitude Product Benchmark Report 2025, Ch 4
