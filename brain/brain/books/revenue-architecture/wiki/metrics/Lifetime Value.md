---
type: metric
tags: [ltv, lifetime-value, metric]
sources: ["[[07-mathematical-model]]"]
updated: 2026-04-18
---

# Lifetime Value

## Definition

The total revenue a customer is expected to generate across their entire relationship with the company. Also called **LTV**. In a recurring revenue business, LTV is primarily driven by [[Net Revenue Retention]] compounding over years, not by the initial commit.

## Formula

```
       N
LTV = Σ ARR(t)        where ARR(t) = ARR(t−1) × NRR(t)
      t=1
```

For a constant NRR:

```
LTV = ARR(1) × (1 − NRR^N) / (1 − NRR)     if NRR ≠ 1
```

## Worked example (Formula 7-1a, 7-1b)

- Initial ARR = $100,000
- Constant NRR = 1.10 over 5 years

| Year | ARR |
|---|---|
| 1 | $100,000 |
| 2 | $110,000 |
| 3 | $121,000 |
| 4 | $133,100 |
| 5 | $146,410 |
| **LTV (5Y)** | **$610,510** |

## Horizon

- **5-year LTV (LTV-5Y)** — typical for platform products (longer in-account lifespan)
- **3-year LTV (LTV-3Y)** — typical for applications atop a platform

## The 17/83 rule

From Table 7.6 (worked example):

- A $18,408 first-year ARR commit with typical NRR behaviour yields $106,909 over 5 years.
- Year 1 ARR is only **17% of 5-year LTV**.
- **83% of total customer value depends on post-sale performance** — onboarding, retention, expansion. That is, on the seller continuing to deliver [[Recurring Impact]].

Consequence: compensation and attention allocated only to year-1 revenue miss 83% of the value. This is the mathematical case for investing heavily in post-sales.

## LTV vs CAC

Ch 7 doesn't fully develop the LTV/CAC ratio; expect it in Ch 10 ([[GTM Model]]) where cost structure is addressed. CAC is not defined as a metric in Ch 7.

## Related

- [[Net Revenue Retention]]
- [[Annual Recurring Revenue]]
- [[Hypergrowth]]
- [[Recurring Impact]]
- [[Mathematical Model]]
- [[Growth Formula]]
- [[Unit Economics]]

## Sources

- [[07-mathematical-model]] — §7.1.4 (Formulas 7-1a, 7-1b), §7.2 (Table 7.6), §7.3 (Figure 7.13)

## Open items

- [ ] CAC and CAC payback (likely Ch 10)
- [ ] LTV:CAC ratio benchmarks
- [ ] Discount-adjusted LTV
