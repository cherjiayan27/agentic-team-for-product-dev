---
type: metric
tags: [nrr, retention, expansion, hypergrowth]
sources: ["[[07-mathematical-model]]"]
updated: 2026-04-18
---

# Net Revenue Retention

## Definition

The percentage of revenue retained from an existing customer cohort across a period, **including expansion, upsells, cross-sells, downgrades, and churn**. Also called **NRR**. Corresponds to CR7 × CR8 in the [[Bowtie]] / [[Data Model]]. The single metric most correlated with [[Hypergrowth]].

## Formula

```
NRR = (MRR_start + MRR_expansion − MRR_contraction − MRR_churn) / MRR_start × 100
```

Or, expressed via the Bowtie:

```
NRR = (VM7 × CR7 × CR8) / VM7 × 100
    = CR7 × CR8 × 100
```

## Worked example (§7.1.4)

- $100,000 MRR at start (100 customers × $1,000)
- 3 customers cancel → −$3,000 churn
- 2 customers downgrade $500 → −$1,000 contraction
- 12 customers expand $500/month → +$6,000 expansion
- NRR = ($100,000 − $1,000 − $3,000 + $6,000) / $100,000 = **102%**

## Interpretation

- **NRR > 100%** — account base is growing even without new logos. This is the precondition for [[Hypergrowth]].
- **NRR = 100%** — account base holds steady. Growth depends entirely on [[Acquisition]].
- **NRR < 100%** — account base is shrinking. [[Volatility]] becomes a threat — nonlinearity works against you.

## Nonlinearity (Figure 7.10)

Over time, NRR produces a hyperbolic growth curve:

| NRR | Revenue after 10 years (year 1 = $1) |
|---|---|
| 1.00 | 1.0× |
| 1.10 | 2.6× |
| 1.15 | 4.0× |
| 1.20 | 6.2× |
| 1.25 | 9.3× |

Small NRR improvements produce increasingly disproportionate long-term results. See [[Compound Impact]].

## NRR vs GRR

- **[[Gross Revenue Retention]]** — retention without expansion. Always ≤ 100%.
- **NRR** — retention + expansion. Can exceed 100%.
- Both drawn from the right side of the [[Bowtie]]; NRR is typically the headline metric for SaaS investor communications.

## Why it drives hypergrowth

- [[Expansion]] cost is ~20% of expanded revenue (vs ~100% for [[Acquisition]]). So every $1 of expansion carries much more margin than every $1 of new acquisition.
- Expansion compounds year-over-year in the time domain (see [[Two Domains of the Bowtie]]).
- Result: NRR is the lever that produces the largest long-term profit lift per unit of management attention.

## Rules

- **Calculate by cohort** with matching GTM motion and signup timeframe.
- **Use MRR or ARR consistently** across the entire journey.
- **Don't assign the [[Acquisition]] team to expansion** — acquisition cost ratios will replace expansion cost ratios and collapse NRR economics. See [[Retention]] risk section.

## Related

- [[Gross Revenue Retention]]
- [[Lifetime Value]]
- [[Hypergrowth]]
- [[Expansion]]
- [[Retention]]
- [[Compound Impact]]
- [[Nonlinearity]]
- [[Mathematical Model]]
- [[Bowtie]]

## Sources

- [[07-mathematical-model]] — §7.1.4 (Formula 7-9), Figures 7.8, 7.9, 7.10
