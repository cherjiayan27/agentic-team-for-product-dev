---
type: concept
tags: [amplitude, growth, anti-pattern]
sources: ["[[01-how-top-products-grow]]"]
updated: 2026-04-18
---

# Leaky Bucket Problem

## Definition

The empirical finding that **fast acquisition does not cause retention**. Amplitude's 2025 data shows **no relationship** between products in the top quartile for adding users and products in the top quartile for retention. Pouring water into a bucket with holes doesn't fill it up.

## Mechanism

Products with high acquisition but low retention:
- Attract users faster than they retain them
- Burn acquisition spend on users who churn within weeks
- Often optimise for **easy signup** (friction-removal, viral hooks) while neglecting **time-to-value**
- Appear healthy at the top-of-funnel metric and sick at the bottom

The failure mode is **measurable**: top-quartile acquisition metrics coexist with bottom-quartile retention metrics in the same product, yet executives often only watch the top-quartile number.

## Why it matters

- **Acquisition spend is wasted** if retention isn't solved first. Jacco's [[Acquisition]] cost is typically 100% of first-year revenue; if those users churn, you never recover it.
- **The fix is upstream of acquisition.** The "leak" is in activation and onboarding — see [[03-activation]] and [[Recurring Impact]].
- **LTV/CAC collapses.** Without retention, customer LTV approaches zero and acquisition is structurally unprofitable.

## How to diagnose

- Plot your acquisition percentile against your retention percentile per cohort. If you're top-quartile in one and median-or-worse in the other, you have a leaky bucket.
- Check the **[[User Retention]] curve** at Month 1 against [[Retention Benchmarks (All Products)]]. If below median, fix retention before adding more acquisition spend.
- Cross-reference with [[Activation Rate]] — most leaky buckets have an activation problem, not an acquisition one.

## Connection to Revenue Architecture

Echoes Jacco's Ch 2 lesson that **acquisition dominates only early**; past $10M ARR, [[Retention]] and [[Expansion]] do the work. A leaky bucket at $2M ARR becomes a crisis at $10M ARR when retention should be taking over.

Also tied to Jacco's [[Founder-Led Growth]] failure mode (§9.2.2) — founder-led growth often produces top-tier acquisition via sheer charisma, while the team hasn't built the onboarding/retention muscle underneath. When the founder steps back (or the sales team expands), the bucket leaks become visible.

## Related

- [[User Retention]]
- [[Activation Rate]]
- [[Recurring Impact]]
- [[Acquisition]] — Jacco's counterpart
- [[Retention]] — Jacco's revenue counterpart
- [[Four Stages of Growth]]

## Sources

- [[01-how-top-products-grow]] — Amplitude Product Benchmark Report 2025, Ch 1 Executive Summary
