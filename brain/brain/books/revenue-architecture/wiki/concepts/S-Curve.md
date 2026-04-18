---
type: concept
tags: [s-curve, growth-pattern, logistic]
sources: ["[[09-growth-model]]"]
updated: 2026-04-18
---

# S-Curve

## Definition

The logistic growth pattern that subscription businesses typically trace. Slow early growth, exponential middle-stage compounding via [[Recurring Revenue]] and [[Net Revenue Retention]], eventual plateau at TAM saturation. The canonical shape of a recurring-revenue trajectory.

## Three stages

1. **Early stage** — slow growth. Customer base is small, so [[Compound Impact]] is irrelevant. Time spent on PMF, early customer acquisition, establishing initial processes.
2. **Middle stage** — accelerated growth. Retained customers compound, network effects kick in, rapid ARR expansion. This is where the Compound Effect dominates.
3. **Maturity stage** — plateau. TAM saturation. CAC rises as easy-to-reach customers are already acquired. Growth rate decelerates but absolute growth continues.

## [[Inflection Point]]

Where the curve transitions from exponential to plateau. A pivotal moment requiring a strategic choice:

- **Continue pursuing growth** — requires new markets, new products, or acquisitions to extend TAM (Uber's UberEats launch + Postmates acquisition)
- **Pivot to profitability** — optimise operations for margin

Missing the inflection point means coasting on a declining growth rate until it's too late to course-correct.

## Guidelines for reading growth charts

- **Check axis scale.** Logarithmic axes make exponential growth look linear. T2D3 in Figure 9.4 is plotted on a log scale so the S-curve appears almost linear.
- **Zoom out.** Any growth curve zoomed in enough looks linear.
- **Check timeframe.** Short windows mask long-term trends.
- **Watch for inflection points.** A direction change is the most strategically important signal.
- **Verify data quality.** Especially when sources don't adhere to the [[Data Structure]].

## Canonical example: DataDog

Figure 9.2 plots DataDog's quarterly ARR from 2017 to 3Q 2023. Traces a classic S-curve until mid-2022, then hits an inflection point at the SaaS crash. As of 2024 unclear whether it recovers or has hit a permanent TAM constraint.

## Related

- [[Growth Model]]
- [[Growth Stages]]
- [[Inflection Point]]
- [[T2D3 Growth Trend]]
- [[Compound Impact]]
- [[Net Revenue Retention]]

## Sources

- [[09-growth-model]] — §9.1.1 (Figure 9.1, Figure 9.2), §9.1.6 (Figure 9.5)
