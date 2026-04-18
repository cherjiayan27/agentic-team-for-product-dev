---
type: concept
tags: [metrics, bowtie, data-structure]
sources: ["[[06-data-model]]"]
updated: 2026-04-18
---

# Bowtie Metrics

## Definition

The full reference of Volume, Conversion, Time, and Performance metrics overlaid on the [[Bowtie]] in Jacco's [[Data Structure]]. The canonical mapping every GTM motion and every metric-driven decision references.

## Volume Metrics (VM1–VM9)

| VM | Description | Example term |
|---|---|---|
| VM1 | Match to target profile (Situation, Pain, Impact potential) | Prospect |
| VM2 | Expressed interest, provided contact | MQL / PQL / Hand-raise |
| VM3 | Experiences enough pain to consider action | SQL / PQL |
| VM4 | Verified priority, consequence of inaction exists | SAL / Qualified Opportunity / PQA |
| VM5 | Mutual Commitment (wins / sign-ups) | Wins |
| VM6 | Revenue committed | MRR committed |
| VM7 | Revenue after onboarding churn | MRR start |
| VM8 | Monthly/annual recurring revenue retained | MRR / MAU |
| VM9 | Revenue over entire lifetime | LTV |

Left side (VM1–VM5) is measured in **units**. Right side (VM6–VM9) in **revenue**. Transition at VM5 → VM6 via ACV (units × ACV = revenue).

## Conversion Metrics (CR1–CR8, CR9 reserved)

| CR | Stage | Description |
|---|---|---|
| CR1 | Awareness | Efficiency of lead-gen campaigns (signups as % of visitors) |
| CR2 | Education | Effectiveness of outreach to develop leads |
| CR3 | Prioritization | Qualifying the opportunity (discovery call) |
| CR4 | Selling | [[Win Rate]] — qualified opps to commits |
| CR5 | Commit | 1 − Discount (normalises list price) |
| CR6 | Onboarding | 1 − Onboarding churn; % of committed customers successfully onboarded |
| CR7 | Retention | [[Gross Revenue Retention]] — recurring revenue retained from existing customers |
| CR8 | Expansion | ARR added via upsell/cross-sell as % of post-churn ARR |
| CR9 | Closed-loop | Reserved for future closed-loop back to acquisition |

[[Net Revenue Retention]] = CR7 × CR8.

## Time Metrics (Δt1–Δt8)

| Δt | Stage | Description |
|---|---|---|
| Δt1 | Awareness | Prospect → conversation latency (critical for inbound) |
| Δt2 | Education | Learning time until buyer is interested |
| Δt3 | Prioritization | Time to qualify priority |
| Δt4 | Selling | Sales cycle length |
| Δt5 | Commit | Time to set up internal instance/systems |
| Δt6 | Onboarding | Time to first impact (critical for retention) |
| Δt7 | Retention | Contract length |
| Δt8 | Expansion | Customer lifetime |

Measures **waiting time** between stages, not action duration.

## Go Fast vs Go Long

Left side Δt metrics should be **minimised** — shorter sales cycles, faster response times. Right side Δt metrics should be **maximised** — longer lifetimes, deeper expansion. See [[Two Domains of the Bowtie]].

## Performance Metrics

Cross-domain ratios that don't fit neatly into VM/CR/Δt:
- Average price per deal = committed MRR / deals committed
- Win rate vs retention signal (e.g. high win rate + low retention = overselling)
- LTV per seller
- Per-seller productivity (Table 6.4 Rob vs Jennifer example)

## Related

- [[Data Structure]]
- [[Bowtie]]
- [[Data Model]]
- [[Two Domains of the Bowtie]]
- [[Win Rate]]
- [[Gross Revenue Retention]]
- [[Net Revenue Retention]]

## Sources

- [[06-data-model]] — Tables 6.1, 6.2, 6.3; Figures 6.3, 6.4, 6.6, 6.15
