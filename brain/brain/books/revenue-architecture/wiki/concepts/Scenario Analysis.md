---
type: concept
tags: [scenario-analysis, modeling, planning]
sources: ["[[07-mathematical-model]]"]
updated: 2026-04-18
---

# Scenario Analysis

## Definition

Systematically varying one or more inputs to a [[Growth Formula]] and calculating the effect on outputs (ARR, LTV, margin). A core practice of the [[Mathematical Model]] — the scientific alternative to top-down plan-by-aspiration.

## Canonical scenarios from §7.2

### Scenario 1: Eliminate the discount

*What's the break-even win rate if we remove a 23% discount?*

- Current: 26% win rate × 77% of list price = ARR $18,408
- At 0% discount: required win rate = 26% × ($18,408 / $24,000) = **19.94%**
- Conclusion: if the average win rate stays above 19.94% after removing the discount, eliminating the discount is ARR-positive.

### Scenario 2: Economic downturn — 5% drop across all conversion rates

- Before: ARR $18,408
- After 5% drop at each of 5 CRs: ARR $10,759 — a **42% drop** in revenue from a 5% system-wide nudge. Illustrates [[Volatility]].

### Scenario 3: NRR +/− 5% increments

- Apply to the LTV calculation over 5 years; observe the compounding effect.

### Scenario 4: LTV horizon changes

- Extend from 5 → 6 → 7 years, or shorten to 3 or 4 years.
- Matters because platform products have longer horizons than applications.

## Why it matters

- Replaces **intuition** with **modelled outcomes**. Executives often have strong priors that fail under compounding.
- Reveals **leverage points.** Which CR, if improved 10%, produces the biggest ARR lift?
- Surfaces **volatility risks.** A symmetric 5% downside test forces leaders to see the asymmetric exposure.
- Informs **capital allocation.** Spending is justified by projected unit-economics impact, not by vague growth claims.

## Process

1. Build a [[Growth Formula]] for the motion.
2. Normalize it (single commit, list price × (1 − discount), etc.).
3. Identify the variable to flex (discount, one CR, NRR, or multiple simultaneously).
4. Recalculate ARR(commit), LTV, or margin.
5. Validate in an isolated market segment before rolling out.

## Related

- [[Growth Formula]]
- [[Mathematical Model]]
- [[Unit Economics]]
- [[Nonlinearity]]
- [[Volatility]]

## Sources

- [[07-mathematical-model]] — §7.2 Scenario Analyses 1 and 2, Exercises 7.6
