---
type: metric
tags: [win-rate, pipeline, conversion]
sources: ["[[05-revenue-model]]", "[[07-mathematical-model]]"]
updated: 2026-04-18
---

# Win Rate

## Definition

The ratio of won deals to total qualified opportunities worked. Typically expressed as `1:N` (one win per N opportunities) or as a percentage.

## Formula

`Win Rate = Won Deals / Total Qualified Opportunities`

Pipeline coverage requirement: `Required Pipeline = Target Revenue × N` where `1:N` is the win rate. A 1:5 win rate requires a **5x pipeline**.

## Benchmarks by monetization strategy (Figure 5.8)

| Monetization | Win Rate | Pipeline Coverage |
|---|---|---|
| [[Ownership]] (perpetual software, $500K+) | 1:3 | 3x |
| Multi-year SaaS | 1:4 | 4x |
| Annual SaaS | 1:5 | 5x |
| Monthly SaaS | 1:6 to 1:7 | 6–7x |
| [[Consumption]] | 1:10 | 10x |
| [[Freemium]] (free → paid) | 1:100 | 100x (unless virality) |

## Interpretation rules

- **Win rate degrades as buyer risk decreases.** Counter-intuitive but real: lower commitment attracts unqualified prospects who inflate the funnel.
- **Metric mismatch is a common failure.** An annual-SaaS business planning against a 3x pipeline (ownership assumption) will chronically under-lead. §5.3.1 identifies this as Mistake #1 of the [[Revenue Model]].

## Ch 7 mathematical basis

Win rate is itself the **product of per-meeting/per-touchpoint conversion rates** within the selling sub-system:

```
Win Rate = CR(a) × CR(b) × CR(c) × ... × CR(n)
```

Where each CR is the per-touchpoint conversion. For a constant per-touchpoint CR: `Win Rate = CR^(number of touchpoints)`.

**Consequences:**
- A small per-touchpoint CR improvement compounds into a large win-rate lift. Going from 85% → 90% per-meeting CR doubles revenue over 12 meetings (§7.1.3).
- Adding more touchpoints reduces win rate — see [[Law of Diminishing Returns]].
- The whole acquisition system is an **open-loop nonlinear system** prone to [[Volatility]].

## Related

- [[Revenue Model]]
- [[Monetization Strategy]]
- [[Revenue Velocity]]
- [[Annual Contract Value]]
- [[Growth Formula]]
- [[Law of Diminishing Returns]]
- [[Nonlinearity]]
- [[Bowtie]] — corresponds to CR4

## Sources

- [[05-revenue-model]] — §5.2.4, §5.3.1, Figure 5.8
- [[07-mathematical-model]] — §7.1.3 (Formulas 7-5 through 7-7), Figure 7.4
