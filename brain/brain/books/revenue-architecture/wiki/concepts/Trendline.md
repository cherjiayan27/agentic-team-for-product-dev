---
type: concept
tags: [trendline, benchmark, measurement]
sources: ["[[06-data-model]]"]
updated: 2026-04-18
---

# Trendline

## Definition

A rolling time-series view of one or more [[Bowtie Metrics]] against the business's own history, typically over the Last Twelve Months (LTM). The most reliable form of benchmarking in Revenue Architecture — comparing a business to itself is more actionable than comparing to peers whose data isn't normalised to the same [[Data Structure]].

## Why trendlines outperform peer benchmarks

- **Apples-to-apples by construction** — you control both sides of the comparison
- **Catches drift early** — small, persistent declines in a CR or Δt are visible before they compound into revenue misses
- **Forecasts future outcomes** — trend direction extrapolates more accurately than point-in-time peer averages

## Worked example (§6.3.2)

**Client:** single product, three GTM motions with different ACVs (SMB $18K, mid-market $24K, enterprise $48K).

**Observation over 10 quarters:** win rate (CR4) trending from 30% → 25% in SMB.

**Math consequence:**
- At 30% CR4: 1 win requires 1/0.3 = 3.33 opps
- At 25% CR4: 1 win requires 1/0.25 = 4.0 opps
- **20% increase in opportunity demand**

**Operational consequence:** for 10 sellers each closing 8/quarter, historical demand was 267 leads/quarter; trendline-corrected demand is 400 leads/quarter. Millions of dollars depend on noticing this.

**Corrective action:** the data-driven team invested in lead-gen and development, increased opportunities in SMB from ~300 to 400 over the last two quarters, and stabilised revenue.

## How to use

- Pick a timeline matching the sales cycle. High Touch (9-month cycle) → quarterly intervals. Medium Touch (~30 days) → monthly. Low Touch / PLG → weekly.
- Trend **multiple metrics simultaneously.** A drop in CR3 coupled with a drop in CR4 tells a different story than either alone.
- Cross-reference with industry [[Benchmark Model]] to distinguish market-wide shifts from company-specific issues.

## Related

- [[Benchmark Model]]
- [[Bowtie Metrics]]
- [[Data Structure]]

## Sources

- [[06-data-model]] — §6.3.2 (Figure 6.8 example)
