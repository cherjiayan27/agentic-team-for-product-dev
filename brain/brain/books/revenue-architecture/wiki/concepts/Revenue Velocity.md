---
type: concept
tags: [velocity, acceleration, growth]
sources: ["[[05-revenue-model]]", "[[07-mathematical-model]]"]
updated: 2026-04-18
---

# Revenue Velocity

## Definition

How quickly a company generates revenue. Sometimes called "revenue acceleration." A function of both how fast [[Acquisition]] converts leads to commitments, and how fast [[Retention]] and [[Expansion]] compound within existing accounts.

## Two modes (Figure 5.9)

### Consecutive acceleration — for acquisition

Acquisition revenue velocity is the product of a **sequence** of steps:

`Lead → Opportunity → Mutual Commit`

- Time from lead → opportunity (LeadDev stage)
- Time from opportunity → mutual commit (Sales stage)

Each step has its own conversion and latency. Accelerating acquisition means compressing this chain.

### Concurrent acceleration — for retention and expansion

Expansion revenue velocity requires **three things happening simultaneously**:

1. **Adoption** — time to successfully onboard the customer so they achieve the promised [[Value and Impact|Impact]]. Weeks to months for platform sales, seconds for application sales (PLG).
2. **Account penetration (expansion)** — time to grow usage, reach max users, cross-sell other products. Months to years. Can start *before* the buyer achieves adoption.
3. **Account growth** — the customer's own business growing (drives usage growth). Takes years. Hard to artificially accelerate.

## Velocity along the arc

| Monetization | Sales cycle |
|---|---|
| [[Ownership]] (perpetual software) | 9–18 months |
| Multi-year SaaS | 6+ months |
| Annual SaaS | 30+ days |
| Monthly SaaS | 10+ days |
| [[Consumption]] | 1+ day |
| [[Freemium]] | Minutes |

## Common misuse

Teams often treat expansion as **consecutive** — wait until the customer is "happy" or all seats are used before pushing expansion. Jacco argues expansion should be concurrent: the seller has more visibility into usage patterns than the buyer and should recommend expansion proactively.

## Ch 7 mathematical note

The consecutive / concurrent distinction maps directly to [[Two Domains of the Bowtie]]:
- Consecutive acceleration = frequency domain (left side) = repeated multiplication over events
- Concurrent acceleration = time domain (right side) = accumulation over time

This reinforces why expansion velocity is not just "sales moving faster" — it's a structurally different mathematical regime that operates on a different clock.

## Related

- [[Acquisition]]
- [[Retention]]
- [[Expansion]]
- [[Revenue Model]]
- [[Two Domains of the Bowtie]]
- [[Bowtie]]

## Sources

- [[05-revenue-model]] — §5.2.5, Figures 5.9, 5.10
- [[07-mathematical-model]] — §7.1.4 (Figures 7.11, 7.12)
