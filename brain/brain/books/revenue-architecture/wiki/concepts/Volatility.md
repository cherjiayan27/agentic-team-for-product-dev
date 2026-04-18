---
type: concept
tags: [volatility, risk, nonlinearity]
sources: ["[[07-mathematical-model]]"]
updated: 2026-04-18
---

# Volatility

## Definition

The downside property of a recurring revenue system: the same [[Nonlinearity]] that enables [[Hypergrowth]] also enables accelerated decline. When conversion rates, retention, or expansion drop marginally across many stages simultaneously, the compound effect produces a disproportionate revenue loss. The system runs in reverse.

## Magnitudes

- **5% decline across 5 conversion rates** → ~23% compound decline in ARR (Table 7.1 scenario).
- **Repeated over multiple quarters** → 50%+ drop in ARR within a year (Table 7.1: $41,310 → $19,094 across 5 quarters).
- **Historical case:** the 2022 SaaS downturn. The same nonlinearity that drove hypergrowth during the Golden Era ran in reverse, triggering a rapid, negative cascade.

## Root cause: open-loop acquisition

The [[Acquisition]] side of the [[Bowtie]] lacks structural feedback loops (Figure 7.6). A system without feedback is prone to **running away** — output increasingly diverges from intent. Nonlinearity in the acquisition system amplifies any drift.

## Comparison with retention

[[Retention]] and [[Expansion]] are closed-loop and more stable (Figure 7.7). But if [[Net Revenue Retention]] drops below 1, the system *still* goes nonlinear — now in the decay direction. Customers who churn take their compounding future value with them.

## Operational implications

- **Scenario-test downside.** Not just upside. Model "what if all CRs drop 5%?" — understand the crash scenario before it happens.
- **Watch for runaway.** The moment a negative trend persists across multiple conversion rates, act fast. Waiting for the linear intuition to fail is too late.
- **Don't average across cohorts.** A weak cohort hidden inside averaged data is a ticking bomb.
- **Operators, not the system, are to blame.** Jacco's framing: the system behaves exactly as it should. The operator's job is to comprehend, predict, and control it.

## Related

- [[Nonlinearity]]
- [[Hypergrowth]]
- [[Compound Impact]]
- [[Scenario Analysis]]
- [[Mathematical Model]]

## Sources

- [[07-mathematical-model]] — §7.1.3 (Table 7.1, Figure 7.6), §7.5 recap
