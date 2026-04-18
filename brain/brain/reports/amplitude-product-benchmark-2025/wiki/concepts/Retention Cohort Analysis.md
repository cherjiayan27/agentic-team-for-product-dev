---
type: concept
tags: [amplitude, cohort, methodology, analytics]
sources: ["[[05-retention]]"]
updated: 2026-04-18
---

# Retention Cohort Analysis

## Definition

Methodology for measuring [[User Retention]] by grouping users who first engaged in the same period (a "cohort") and tracking what percentage of them return in subsequent periods. The standard way to produce interpretable retention curves.

## Why cohort-based

A raw retention number ("10% of users come back next month") hides critical variation:

- **Cohort quality drift.** If you doubled marketing spend last month, that cohort may have more tire-kickers. Pooled retention would look worse without clarifying *which cohort*.
- **Product change effects.** If you launched a new onboarding flow in March, only March+ cohorts reflect it. Pooled numbers mask the change.
- **Seasonality.** December sign-ups may retain differently than July's (holiday buyers, year-end experimentation, etc.).

Cohort analysis isolates these effects.

## Standard output: retention curve

For each cohort, plot the retention rate at Month 1, Month 2, Month 3, ... forming a **retention curve**. Compare curves across cohorts:

- Cohorts whose curves flatten faster = better long-term retention
- Cohorts whose curves decline steeply = churn problem
- Curves that shift upward over time = product/onboarding improvements working

## Applying cohort analysis (from the report's "Take action")

1. **Lifecycle cohorts** — group users by their stage in the customer journey (new sign-up, activated, power user, dormant). Track stage-to-stage conversion.
2. **Dormant-user cohorts** — identify users who've gone inactive. Target re-engagement campaigns. Often higher ROI than new acquisition.
3. **Feature cohorts** — users who used Feature X vs didn't. Reveals which features drive retention.

## Related

- [[User Retention]]
- [[Retention Benchmarks (All Products)]]
- [[Bowtie Metrics]] — the Bowtie VM/CR structure is a cohort framework applied to the revenue side
- [[Scenario Analysis]]

## Sources

- [[05-retention]] — §"Take action" (PDF p. 24)
