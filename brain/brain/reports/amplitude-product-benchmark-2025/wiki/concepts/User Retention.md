---
type: concept
tags: [amplitude, retention, user-behavior, engagement]
sources: ["[[05-retention]]"]
updated: 2026-04-18
---

# User Retention

## Definition

The percentage of users who return to a product in a given month after their first visit. A **user-activity-based metric**, distinct from revenue-based retention (see [[Retention]]). Amplitude's core metric for product-usage stickiness.

## Distinction from Jacco's Retention

| | [[Retention]] (Jacco) | User Retention (Amplitude) |
|---|---|---|
| **Measures** | Revenue kept across a period | Users returning across a period |
| **Unit** | Currency ($) | Count (users) |
| **Key metric** | [[Gross Revenue Retention]] — GRR | Month-N retention rate (e.g. Month-1, Month-3) |
| **Lens** | Financial / commercial | Behavioural / product |
| **Lag** | Lagging (shows up at renewal) | Leading (visible in weeks) |

A customer can be **retained** (still paying) but have inactive users. Users can be **active** from a customer that's about to churn. Both perspectives matter.

## Formula

```
Month-N Retention = (Users active in Month N) / (Users active in Month 0) × 100%
```

Typically calculated per cohort (users who first signed up in the same period).

## Benchmarks (Amplitude 2025 report)

All-product percentiles:

| Period | Top 10% | Median |
|---|---|---|
| Month 1 | 26% | 6.5% |
| Month 3 | 18.5% | 3.8% |

Enterprise-specific at Month 3: top 10% = 25%, median = 3.5%.

See [[Retention Benchmarks (All Products)]] and [[Enterprise Retention Benchmarks]] for full detail.

## Why user retention matters

- **Leading indicator of revenue retention.** Users who keep coming back are customers who renew.
- **Directly tied to product value.** If users don't return, the product isn't delivering impact — echoes Jacco's [[Recurring Impact]] principle.
- **Compounds.** 4× retention at month 1 → 5× by month 3 → even larger gaps over lifetime. See [[Compound Impact]].
- **Early activation predicts it.** The first week matters most. Amplitude's data confirms Jacco's onboarding emphasis.

## Operational use

- **Cohort retention curves** — track Month-N retention for each signup cohort; compare curves over time
- **Product experimentation** — test whether a feature/flow change moves the Month-N curve
- **Customer health scoring** — low user retention → high churn risk → intervention trigger

## Related

- [[Retention]] — revenue-based retention (Jacco)
- [[Gross Revenue Retention]] — financial retention metric
- [[Recurring Impact]] — the causal mechanism
- [[Bowtie]] — Onboarding and Retention stages
- [[Retention Cohort Analysis]]
- [[Retention Benchmarks (All Products)]]
- [[DAU]] — complementary engagement metric
- [[MAU]]

## Sources

- [[05-retention]] — Amplitude Product Benchmark Report 2025, Ch 5
