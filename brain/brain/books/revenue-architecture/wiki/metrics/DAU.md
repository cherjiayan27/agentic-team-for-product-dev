---
type: metric
tags: [dau, usage, active-users]
sources: ["[[06-data-model]]", "[[10-go-to-market-model]]"]
updated: 2026-04-18
---

# DAU

## Definition

**Daily Active Users.** The number of unique users who interact with the product on a given day. Core PLG and consumer SaaS metric. Key KPI in the [[Durability]] stage of a GTM motion.

## Related metrics

- **MAU** (Monthly Active Users) — unique users per month
- **WAU** (Weekly Active Users) — unique users per week
- **DAU/MAU ratio** — engagement intensity; values closer to 1.0 signal deeply habitual usage (Slack, WhatsApp)

## Why it matters

- **Leading indicator of churn.** Sustained DAU/MAU drops predict renewal risk before it shows up in GRR.
- **PLG revenue signal.** In [[No Touch GTM Motion|No Touch motions]] usage is revenue — more DAU → more seats → more expansion.
- **Primary KPI in Durability stage** (per [[GTM Maturity Stages]] Table 10.3). Durability = quality of usage, not just revenue retention.

## Rules

- **Cohort analysis** — track DAU by signup cohort to see whether usage decays over time
- **Feature-level DAU** — which features drive habitual usage; which are one-time-use
- **Per-ICP DAU** — different user types have different "healthy" DAU patterns

## Related

- [[Durability]]
- [[GTM Maturity Stages]]
- [[No Touch GTM Motion]]
- [[Product-Led Growth]]
- [[Gross Revenue Retention]]

## Sources

- [[06-data-model]] — §6.4 (No Touch mapping)
- [[10-go-to-market-model]] — §10.1.7 (Table 10.3)
