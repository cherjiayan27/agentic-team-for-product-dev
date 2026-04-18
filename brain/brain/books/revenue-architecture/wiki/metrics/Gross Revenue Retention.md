---
type: metric
tags: [grr, retention, metric]
sources: ["[[07-mathematical-model]]", "[[05-retention]]"]
updated: 2026-04-18
---

# Gross Revenue Retention

## Definition

The percentage of revenue retained from an existing customer cohort across a period, **excluding any expansion**. Captures pure churn and contraction. Also called **GRR**. Corresponds to CR7 in the [[Bowtie]] / [[Data Model]].

## Formula

```
GRR = (MRR_start − MRR_contraction − MRR_churn) / MRR_start × 100
```

## Worked example (§7.1.4)

- 100 customers × $1,000/month = $100,000 MRR at start
- 3 customers cancel → $3,000 churn
- 2 customers downgrade $500 each → $1,000 contraction
- GRR = ($100,000 − $1,000 − $3,000) / $100,000 = **96%**

## Interpretation

- **GRR ≤ 100%** always — by construction, since GRR doesn't include expansion.
- Values below ~90% (annual) signal a retention problem that compounds into steep revenue decline over time (Figure 7.9 shows GRR curve as `y = 0.9ˣ`).
- Values above ~95% annual indicate strong product/market fit and healthy [[Recurring Impact]] delivery.

## GRR vs NRR

- **GRR** — pure defense. Keeps existing revenue.
- **[[Net Revenue Retention]]** — defense plus offense. Adds expansion to GRR.
- Operators watch both. GRR tells you about churn/contraction quality; NRR tells you about overall account-base momentum.

## Benchmarks (approximate, from book context)

- Healthy annual GRR for B2B SaaS: ~90–95%+
- Healthy monthly GRR: ≥98% (which annualises to ~78%)

## Rules

- **Calculate per cohort.** Different GTM motions and signup timeframes have different retention patterns.
- **MRR or ARR — pick one and stay consistent** across the customer journey and all motions.

## Leading indicator: user retention

GRR is a **lagging** indicator — it's measurable only at renewal. Amplitude's 2025 benchmark report provides a **leading** indicator: [[User Retention]] (% of users returning Month-N). Watching user retention cohort curves predicts GRR weeks to months before renewal events.

**Rule of thumb:** if user retention is below the 50th-percentile benchmark ([[Retention Benchmarks (All Products)]]), GRR problems are likely forming. Intervene early.

## Related

- [[Net Revenue Retention]]
- [[Monthly Recurring Revenue]]
- [[Retention]]
- [[User Retention]] — leading indicator
- [[Retention Benchmarks (All Products)]]
- [[Bowtie]]
- [[Mathematical Model]]

## Sources

- [[07-mathematical-model]] — §7.1.4 (Formula 7-8), Figure 7.8, Figure 7.9
- [[05-retention]] — Amplitude Product Benchmark Report 2025, Ch 5 — user-retention as GRR leading indicator
