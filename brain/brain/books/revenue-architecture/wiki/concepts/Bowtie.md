---
type: concept
tags: [bowtie, data-model, lifecycle]
sources: ["[[06-data-model]]", "[[07-mathematical-model]]"]
updated: 2026-04-18
---

# Bowtie

## Definition

The canonical customer-lifecycle shape of Jacco's [[Data Model]]. An extension of the classic marketing-and-sales funnel that continues past the sale into onboarding, retention, and expansion. Shaped like a bowtie because volume narrows through acquisition (left), hits its minimum at mutual commit (middle), then widens (in revenue terms) through retention and expansion (right).

## Nine stages

| # | Stage | Side | Example activity |
|---|---|---|---|
| 1 | Awareness | Acquisition | Prospect discovers the brand |
| 2 | Education | Acquisition | Content/outreach/webinars |
| 3 | Selection | Acquisition | Opportunity development |
| 4 | **Prioritization** | Acquisition | Discovery call — Bowtie-specific stage |
| 5 | Mutual Commit | Centre | Contract signed |
| 6 | Onboarding | Retention & Expansion | Customer achieves first impact |
| 7 | Retention | Retention & Expansion | Renewal, GRR territory |
| 8 | Expansion | Retention & Expansion | Upsell/cross-sell/resell/renew |

## Canonical variable naming

| Stage | Volume Metric | Conversion Metric | Time Metric |
|---|---|---|---|
| Awareness | VM1 (Prospects) | CR1 | Δt1 |
| Education | VM2 (Leads / MQL / PQL / Hand-raises) | CR2 | Δt2 |
| Selection | VM3 (Opportunities / SQL / PQL) | CR3 | Δt3 |
| Prioritization | VM4 (Qualified Opportunities / SAL / PQA) | CR4 = Win Rate | Δt4 |
| Commit | VM5 (Wins / Sign-ups) | CR5 = 1 − Discount | Δt5 |
| Onboarding | VM6 (MRR / ARR committed) | CR6 (onboarding retention) | Δt6 |
| Retention | VM7 (MRR/ARR start) | CR7 = GRR | Δt7 |
| Expansion | VM8 (MRR/ARR / MAU) | CR8 (expansion %, CR7×CR8 = NRR) | Δt8 |
| (Future closed-loop) | VM9 (LTV) | CR9 | Δt9 |

See [[Bowtie Metrics]] for full definitions.

## Mathematical asymmetry

The two sides of the Bowtie operate under fundamentally different mathematics — see [[Two Domains of the Bowtie]]. Left side: units × multiplication, open loop, attrition. Right side: revenue × time, closed loop, accumulation. The transition happens at VM5 → VM6 (units → revenue via ACV).

## Why the Prioritization stage is new

Classic funnels don't have it. The Bowtie adds it because in subscription/consumption models, the decision isn't "can we afford this / does the ROI work" (ownership-era logic) — it's **is this the priority?** Budget exists as OPEX. The seller's expensive resources (AEs, demo teams, POCs) are engaged starting at Prioritization, so the checkpoint matters.

## GTM motion mapping

Different GTM motions overlay different vocabulary on the same Bowtie:

- **High Touch (enterprise):** Target → MQA → Opportunity → Qualified Opp → Win ...
- **Medium/Low Touch (SMB):** Prospect → MQL → SQL → SAL → Win ...
- **No Touch / [[Product-Led Growth]]:** Prospect → Hand-raise → PQL → PQA → Sign-up → MAU

The VM/CR/Δt numbering stays the same. See [[High Touch GTM Motion]], [[Medium Touch GTM Motion]], [[No Touch GTM Motion]].

## Related

- [[Data Model]]
- [[Data Structure]]
- [[Bowtie Metrics]]
- [[Two Domains of the Bowtie]]
- [[Four Types of Expansion]]
- [[Three Components of Growth]]
- [[Growth Formula]]

## Sources

- [[06-data-model]] — whole chapter; Figures 6.1, 6.3, 6.4, 6.6, 6.15
- [[07-mathematical-model]] — Figures 7.1, 7.7, 7.8, 7.11 (mathematical treatment)
