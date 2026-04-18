---
type: metric
tags: [arr, revenue]
sources: ["[[02-first-principles]]", "[[05-revenue-model]]", "[[07-mathematical-model]]"]
updated: 2026-04-18
---

# Annual Recurring Revenue

Rigorous treatment now available from Ch 7.

## Informal definition

The annualised value of a company's [[Recurring Revenue]] — the revenue the company would generate in a year if its current subscription base continued unchanged. Not the same as total revenue; excludes [[Recurring vs Re-occurring Revenue|re-occurring]] payments (support contracts, insertion orders).

## Why it matters

### Threshold anchors (Ch 2)

Used as the x-axis for the [[Four Stages of Growth]]:
- **~$10M ARR** — [[Retention]] starts to exceed [[Acquisition]]
- **~$100M ARR** — [[Expansion]] starts to exceed [[Acquisition]]

These are the core empirical anchors for [[First Principles of Recurring Revenue]] Principle 2.

### Constraints and valuation (Ch 5)

- Under **$100M ARR**: Jacco recommends a single [[Monetization Strategy]] with ≤3 GTM motions. See [[Revenue Model]] §5.3.3.
- Valuation is heavily indexed to ARR. Adobe example: **$150B valuation on $17B ARR = 8.8x multiple** (Figure 5.15, end-of-2022 data).
- Labelling [[Recurring vs Re-occurring Revenue|re-occurring]] revenue as ARR inflates perceived valuation and is a common integrity issue.

## Formula

```
ARR = sum of annualised recurring subscription value across active customers
    = MRR × 12
```

Excludes [[Recurring vs Re-occurring Revenue|re-occurring]] payments (support contracts, insertion orders, one-time services).

## Sub-components (from the Bowtie, Ch 7)

| Variable | Meaning |
|---|---|
| VM6 — ARR(commit) | ARR at point of mutual commit (end of acquisition) |
| VM7 — ARR(start) | ARR after onboarding completes |
| VM8 — ARR | ARR after retention period |
| VM9 — ARR(lifetime) | Cumulative lifetime ARR — see [[Lifetime Value]] |

## Relationship to other metrics

- `ARR = MRR × 12` — see [[Monthly Recurring Revenue]]
- `ARR(commit) = Commits × ACV` — see [[Annual Contract Value]]
- `LTV = Σ ARR(t)` — see [[Lifetime Value]]
- `ARR(t+1) = ARR(t) × NRR(t+1)` — see [[Net Revenue Retention]]

## Related

- [[Monthly Recurring Revenue]]
- [[Annual Contract Value]]
- [[Net Revenue Retention]]
- [[Lifetime Value]]
- [[Recurring Revenue]]
- [[Recurring vs Re-occurring Revenue]]
- [[Three Components of Growth]]
- [[Four Stages of Growth]]
- [[Revenue Model]]
- [[Growth Formula]]

## Sources

- [[02-first-principles]] — thresholds used throughout §2.2 and §2.3
- [[05-revenue-model]] — §5.3.3 GTM-motion constraint; Adobe valuation in Figure 5.15
- [[07-mathematical-model]] — §7.1.4 (formulas); §7.2 (Growth Formula); §7.3 (monetization comparison)

## Open items

- [ ] Benchmarks / typical growth rates by ARR tier
- [ ] ARR treatment of multi-year contracts at point of commit
