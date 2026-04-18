---
type: concept
tags: [nonlinearity, mathematics, growth]
sources: ["[[07-mathematical-model]]"]
updated: 2026-04-18
---

# Nonlinearity

## Definition

The property by which small changes in input produce **disproportionate** changes in output. In a recurring revenue system, nonlinearity arises from [[Compound Impact]] — repeated multiplication (acquisition side) and accumulation over time (retention/expansion side). The central mathematical insight of the [[Mathematical Model]].

## Linear vs nonlinear

```
Linear:       y = x · n        e.g. 1.15 × 6 = 6.9
Nonlinear:    y = xⁿ            e.g. 1.15⁶ = 2.3   (wait — this is LESS!)
```

The direction of the asymmetry depends on whether you're compounding gains (> 1) or losses (< 1):

- **Gains compound upward.** NRR of 1.10 over 5 years → $100K ARR becomes $146K ARR in year 5. LTV = $610K, not $500K.
- **Losses compound downward.** CR of 0.9 across 12 meetings → each additional meeting reduces win probability. 90%¹² vs 90%¹¹ is a meaningful difference.
- **Multiple simultaneous nudges compound.** A 5% drop across 5 conversion rates produces roughly a 23% compound drop (not 5%).

## Why this matters for the revenue engine

- **Small marginal improvements compound into hypergrowth.** A 10% lift at each step of the funnel is easier to achieve than doubling leads, and typically produces a bigger revenue lift.
- **Small marginal declines compound into crashes.** The 2022 SaaS downturn demonstrated this in reverse: marginal declines across the customer journey compounded into steep revenue drops.
- **Linear thinking misleads.** A sales leader asked "how do we double revenue" will say "double the leads." That's a linear mindset. It usually fails because lead quality drops, conversion rates drop, and the compounding works against you.

## Where nonlinearity shows up

- **[[Acquisition]] open-loop** (Figure 7.4) — win rate is the product of per-meeting conversion rates, so `wins = leads × CR^n` where n is the number of meetings
- **[[Law of Diminishing Returns]] on meetings/emails** — every additional action multiplies by < 1, reducing the final number
- **[[Net Revenue Retention]] > 1** — exponential accumulation over time produces hypergrowth
- **NRR < 1** — exponential decay of the customer base's revenue value

## The "runaway" phenomenon

Without feedback loops, nonlinear open-loop systems **run away** — their output increasingly diverges from intent. Acquisition is especially prone to this (Figure 7.6) because it's an open-loop system. Retention/expansion has feedback (renewals, churn) that provides some self-correction.

## Rules for operating in a nonlinear system

- **Don't average.** Compute per-cohort, per-motion.
- **Don't assume linearity at scale.** A small problem at 10,000 customers is a big problem at 100,000.
- **Tune the conversion rates, not just the volume.** A 10% CR improvement at one stage often matches doubling the upstream volume.
- **Watch for runaway.** Scenario-test downward moves as well as upward.

## Related

- [[Compound Impact]]
- [[Mathematical Model]]
- [[Hypergrowth]]
- [[Volatility]]
- [[Law of Diminishing Returns]]
- [[Two Domains of the Bowtie]]

## Sources

- [[07-mathematical-model]] — §7.1.2, Formulas 7-3 and 7-4, Figure 7.2
