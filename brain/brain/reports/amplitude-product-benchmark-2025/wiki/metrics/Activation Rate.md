---
type: metric
tags: [activation, metric, amplitude]
sources: ["[[03-activation]]"]
updated: 2026-04-18
---

# Activation Rate

## Definition

**The percentage of new users who return on a specified day shortly after their first visit.** Indicates that the user experienced enough value to come back — the first real sign of product-market fit at the individual-user level.

## Formula

```
Day-N Activation Rate = (Users active on Day N) / (Users who signed up on Day 0) × 100%
```

Typically measured at Day 1, Day 7, or Day 14.

## Why it's the leading leading indicator

Activation is the earliest measurable signal of future retention:

- **[[Leaky Bucket Problem]]** — acquisition doesn't predict retention
- **Activation DOES predict retention** — 69% of top 7-day activators become top 3-month retainers
- **[[User Retention]]** is measurable at Month 1+ — 4+ weeks delay
- Activation is measurable at Day 1/7/14 — **2 weeks earlier**
- For decisions that can't wait a month, activation rate is the earliest actionable signal

## Benchmarks

See [[Activation Benchmarks]] for detailed percentiles.

**The rule of thumb:** if you hit **7% of cohort returning on Day 7**, you're in the top 25% for activation.

## Operational use

- **Activation-rate cohort plot** — track Day-N activation for each signup cohort; improvements appear as cohort curves shifting upward
- **"Aha moment" engineering** — identify the action that best predicts retention and instrument for it (see [[Aha Moment]])
- **[[North Star Metric]] alignment** — activation should be defined as "user took the action that matters," not "user showed up"

## Related

- [[Activation Benchmarks]]
- [[Aha Moment]]
- [[North Star Metric]]
- [[User Retention]]
- [[Recurring Impact]]
- [[Bowtie]] — Onboarding stage
- [[Retention Cohort Analysis]]

## Sources

- [[03-activation]] — Amplitude Product Benchmark Report 2025, Ch 3
