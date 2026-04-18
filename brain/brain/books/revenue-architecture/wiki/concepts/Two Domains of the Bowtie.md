---
type: concept
tags: [bowtie, domains, acquisition, retention]
sources: ["[[07-mathematical-model]]"]
updated: 2026-04-18
---

# Two Domains of the Bowtie

## Definition

The left ([[Acquisition]]) and right ([[Retention]] + [[Expansion]]) sides of the [[Bowtie]] operate in fundamentally different mathematical domains. Jacco frames them with Christopher Nolan's *Tenet* analogy — two simultaneous domains that look similar but behave differently (§7.1.4, Figure 7.11).

## The five axes of difference

| Axis | Left — Acquisition | Right — Retention & Expansion |
|---|---|---|
| **Loop** | Open loop — no automatic feedback | Closed loop — self-correcting via renewal behaviour |
| **Unit** | Units (leads, opportunities, deals) | Revenue (MRR, ARR, LTV) |
| **Domain** | Frequency (rate of events: meetings, emails) | Time (months, years) |
| **Direction** | Attrition — loss at each stage | Accumulation — growth of retained revenue |
| **Strategy** | Go fast — compress cycle time | Go long — extend customer lifetime |

## Open-loop vs closed-loop (Figures 7.6, 7.7)

- **Acquisition** lacks structural feedback. A bad lead source keeps producing bad leads until a human notices. This is why acquisition is volatile and prone to **runaway** behaviour.
- **Retention/expansion** has structural feedback. If a customer stops getting impact, they churn. The revenue drop is the signal. The system self-corrects (even if painfully).
- **Implication:** future AI-driven improvements will likely focus on **closing the acquisition loop** — turning acquisition into a self-correcting system by linking downstream retention signals back to upstream targeting.

## Frequency vs time (Figure 7.12)

- Frequency domain: improvements happen by repeating the same action more often, better. Each repetition has cost.
- Time domain: improvements happen once and accrue value for months or years. Low marginal cost, high cumulative effect.
- The domains are **inversely related** (Frequency = 1 / Time), which is why the right side of the Bowtie is mathematically the inverse domain of the left side.

## Attrition vs accumulation

- **Acquisition** = attrition: 90% CR means you *lose* 90% of your input. Conversion rates below 1 compound downward.
- **Retention/expansion** = accumulation: NRR of 1.08 means you *gain* 8% per period. Values above 1 compound upward.

## Strategic consequence: know which domain you're operating in

Actions that look similar have opposite effects depending on the domain. Jacco's **CSM-vs-SM layoff** example (§7.1.4): cutting a CSM to save $100K in salary typically costs more revenue than cutting a Sales Manager, because the CSM drives NRR — which compounds in the time domain — while the SM drives wins, which affect only this period's commits.

## Related

- [[Bowtie]]
- [[Acquisition]]
- [[Retention]]
- [[Expansion]]
- [[Mathematical Model]]
- [[Nonlinearity]]
- [[Compound Impact]]
- [[Revenue Velocity]]

## Sources

- [[07-mathematical-model]] — §7.1.4 (Figures 7.11, 7.12)
