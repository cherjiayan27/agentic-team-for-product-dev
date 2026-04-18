---
type: concept
tags: [metric, product, amplitude]
sources: ["[[03-activation]]"]
updated: 2026-04-18
---

# North Star Metric

## Definition

The **single metric that best captures the core value users get from a product**. Chosen so that improving it moves long-term business outcomes. Distinct from vanity metrics like "users returning to the app" — the North Star is the *action that matters* (e.g. "booking a trip", "completing a workflow"), not mere presence.

## Why it matters for activation

Amplitude's [[Activation Rate]] measurement is only as useful as the action being measured. Defining activation as "user opened the app on Day 1" is a vanity measurement. Defining activation as "user completed the core workflow that matches our value prop" is a North Star measurement.

**Rule:** the activation action should be your North Star Metric's most basic unit.

## Characteristics of a good North Star

- **Reflects core value delivered**, not convenience of measurement
- **Actionable** — teams can move it directly with product/marketing decisions
- **Leading** — predicts downstream revenue outcomes
- **Understandable by everyone** — not just analysts
- **Single** — one number, not a dashboard

## Examples (canonical)

- **Airbnb:** nights booked
- **Slack:** messages sent (more specifically: users who sent their first 2,000 messages)
- **Facebook:** users who made 7 friends in 10 days
- **Spotify:** time spent listening

## Relation to Revenue Architecture

Ties closely to Jacco's [[Value and Impact]]:
- **Value** (left side of Revenue Model arc) = promise; marketing metric
- **Impact** (right side) = fulfilment; **North Star Metric measures this**

Also ties to [[Recurring Impact]] — the North Star is the operational measurement of whether recurring impact is being delivered at the per-user level.

## Related

- [[Activation Rate]]
- [[Aha Moment]]
- [[Recurring Impact]]
- [[Value and Impact]]
- [[User Retention]]

## Sources

- [[03-activation]] — Amplitude Product Benchmark Report 2025, Ch 3 "Take action"
