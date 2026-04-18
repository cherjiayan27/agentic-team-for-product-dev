---
type: source
tags: [amplitude, engagement, benchmark]
sources: []
updated: 2026-04-18
---

# Engagement (Amplitude Benchmark Ch 4)

**Source:** `raw/markdown/04-engagement.md` (Amplitude Product Benchmark Report 2025, PDF pp. 16–20)

## Thesis

Engagement measures how "sticky" a product is — active-user growth over time. The top 10% grow monthly active users by **7.5% (138% annual)** while median products barely move (<1%). **Just 10% of products account for 79% of all user engagement.** But like acquisition, engagement growth does **NOT** predict retention — another instance of the [[Leaky Bucket Problem]]. Making users active isn't enough; you have to make them *stay*.

## Key benchmarks (Figures 8, 9, 11)

### All products (monthly active user growth)

| Percentile | Monthly | Annualised |
|---|---|---|
| Median (50th) | <1% | ~12% |
| Top 10% (90th) | **7.5%** | **~138%** |

**Concentration:** top 10% of products account for **79% of all user engagement**.

### Enterprise

| Percentile | Monthly growth |
|---|---|
| Median | 0.6% |
| Top 10% | 6.5% |

Narrower spread than all-products view — even top enterprises struggle to grow engagement.

## Key findings

- **Engagement ↔ retention: no correlation** (Figure 10). Engagement quartiles distribute evenly across retention quartiles. Growing active users doesn't keep them — another [[Leaky Bucket Problem]] instance.
- **Compounding: 100 active users in January →** 90th percentile = 238 by year-end; median = 106 (same compounding math as acquisition from Ch 2).
- **Habits matter.** The operational fix for engagement is designing for habit formation (see [[Product Usage Interval]]).

## Tactics (from "Take action" — make product use a habit)

1. **Understand your [[Product Usage Interval]]** — how often users naturally use your product; design cadence around this
2. **Identify stickiest features** — use an engagement matrix (high-traffic × small-user-count = under-promoted features)
3. **Create personalized experiences** — dashboards, recommended tasks, cross-channel continuity
4. **Use gamification and incentives** — achievement systems, time-limited discounts
5. **Reference:** Amplitude's Mastering Engagement Playbook

## Concepts / metrics introduced

- [[Engagement Rate]] — the metric (active-user growth)
- [[Product Usage Interval]] — the natural cadence at which users use your product

## Benchmarks introduced

- [[Engagement Benchmarks]]

## Cross-links to Revenue Architecture

- [[DAU]] / [[MAU]] — Jacco's engagement proxies; Amplitude adds benchmark percentiles
- [[Durability]] — engagement is the product-usage dimension of durability
- [[Hypergrowth]] — 138% annual engagement growth is [[T2D3 Growth Trend]] territory
- [[Leaky Bucket Problem]] — confirmed again at engagement layer

## Notable diagrams

- Figure 8 — DAU/WAU/MAU growth rates across percentiles (all products)
- Figure 9 — Compounding comparison (100 active users → year-end)
- Figure 10 — Engagement quartile × Retention quartile (no correlation)
- Figure 11 — Enterprise engagement percentiles

## My notes

*Reserved for user.*
