---
type: framework
tags: [architecture, models, stack]
sources: ["[[05-revenue-model]]"]
updated: 2026-04-18
---

# Six-Layer Model Stack

## Definition

The architectural layering of the six models that together design a recurring revenue business. Lower layers are **static** (rarely change once designed); upper layers are **dynamic** (adapt to markets, teams, and conditions). Each upper layer depends on the layers below it.

## The six layers (bottom up)

| Layer | Model | Static/Dynamic | Role |
|---|---|---|---|
| 6 | [[GTM Model]] | Dynamic | Go-to-market motions (sales-led, PLG, channel, etc.) |
| 5 | [[Growth Model]] | Dynamic | How growth is produced and sustained |
| 4 | [[Operating Model]] | Dynamic | How the revenue organisation runs |
| 3 | [[Mathematical Model]] | Static | The formulas and math of revenue behaviour (causality layer) |
| 2 | [[Data Model]] | Static | Canonical data structure — the [[Data Model\|Bowtie]] customer lifecycle (analytical layer) |
| 1 | [[Revenue Model]] | Static | Monetization strategy, pricing and packaging (foundational layer — [[First Principles of Recurring Revenue]]) |

## Static vs Dynamic

- **Static layers (1–3)** — set them up carefully and resist tinkering. They are the infrastructure that makes revenue generation possible. The [[Revenue Model]] is built on [[First Principles of Recurring Revenue]]; the [[Data Model]] measures what matters; the [[Mathematical Model]] predicts behaviour. Changes here ripple through everything above.
- **Dynamic layers (4–6)** — the operating, growth, and go-to-market layers adapt. The [[Operating Model]] configures the revenue team. The [[Growth Model]] defines motions and levers. The [[GTM Model]] maps motions to customer segments.

## How failure propagates (Figure 5.12 / 5.20)

When Layer 1 (Revenue Model) is wrong — e.g. based on incorrect [[First Principles of Recurring Revenue]] or a mismatched [[Monetization Strategy]]:

- Layer 2 ([[Data Model]]) → measures the wrong data
- Layer 3 ([[Mathematical Model]]) → builds the wrong growth formula
- Layer 4 ([[Operating Model]]) → runs the business incorrectly
- Layer 5 ([[Growth Model]]) → produces non-sustainable growth
- Layer 6 ([[GTM Model]]) → spawns a myriad of misaligned GTM motions

The point: errors at Layer 1 are not locally fixable. They must be corrected at the layer they originate.

## When to use

- Diagnosing why a growth program is failing. Usually the issue is at a lower layer than where the symptoms appear.
- Planning a transformation. Start at Layer 1 and work up — reversing this order creates churn.
- Onboarding. Use this stack as the navigation diagram for the book and for the wiki itself.

## Related

- [[Revenue Model]]
- [[Data Model]]
- [[Mathematical Model]]
- [[Operating Model]]
- [[Growth Model]]
- [[GTM Model]]
- [[First Principles of Recurring Revenue]]

## Sources

- [[05-revenue-model]] — Part II introduction (pp. 121–123), §5.3 (Figure 5.12), §5.5 (Figure 5.20)
