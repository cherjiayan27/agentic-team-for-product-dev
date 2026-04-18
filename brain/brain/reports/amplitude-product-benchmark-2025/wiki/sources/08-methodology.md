---
type: source
tags: [amplitude, methodology, data, trust]
sources: []
updated: 2026-04-18
---

# How We Built This Report (Amplitude Ch 8)

**Source:** `raw/markdown/08-methodology.md` (Amplitude Product Benchmark Report 2025, PDF p. 30)

## Data sources and scale

| Dimension | Scale |
|---|---|
| Companies analysed | **2,600+** |
| Digital products | **10,600+** |
| Industries | 17 |
| Countries | 102 |
| Monthly users in dataset | **171 billion** |
| New users | 93 billion |
| Time window | **September 2023 — September 2024** |

## Methodology notes

- **Anonymized behavioural data** from Amplitude customers
- **Enterprises defined** as: 2,000+ employees in the Americas OR 1,500+ international
- **Customers who opted out of benchmarking are excluded**
- **Data quality:** rigorous checks; imputation avoided; **z-score-based local baseline methods** to remove outliers
- **Amplitude Behavioral Graph:** 1 trillion+ data points processed monthly

## Bias and limitations (things to keep in mind when citing this report)

- **Sample bias.** Amplitude's customers skew toward data-instrumented, product-aware companies. The universe of all digital products includes many that don't measure cohort retention at all — if they were included, medians would likely be lower.
- **Self-reported scope.** "Digital products" definition is theirs; excludes pure services/SaaS with no product analytics.
- **Enterprise definition is headcount-based, not revenue-based.** A $50M ARR company with 500 employees wouldn't be in "enterprise" here, though Jacco would classify it as Scaleup-to-Grownup.
- **Single one-year window.** No YoY comparison across editions; 2026 edition will enable delta tracking.

## When to trust vs when to discount

- **Trust** for relative comparisons within the report (top 10% vs median, industry A vs industry B)
- **Discount slightly** when treating as universal benchmarks — your product might be outside Amplitude's sample distribution
- **Re-check annually** — Amplitude publishes yearly; metrics will shift with industry trends

## Related

- [[Retention Benchmarks (All Products)]]
- [[Industry Benchmarks]]
- [[Enterprise Retention Benchmarks]]
- All other Amplitude benchmark pages

## Sources

- [[08-methodology]] — PDF p. 30
