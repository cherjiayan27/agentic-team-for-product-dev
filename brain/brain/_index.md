# Brain Index — Cross-Source Catalog

Top-level catalog across all sources. For per-source detail, open the inner `index.md`.

## Books

- **[Revenue Architecture](books/revenue-architecture/index.md)** — Jacco van der Kooij, 2023. The foundational framework book: Six-Layer Model Stack, Bowtie, Growth Formula, SPICED, 12 Revenue Breakpoints, 5 Touch GTM Motions. 16 chapters, 127 wiki pages.

## Reports

- **[Amplitude Product Benchmark Report 2025](reports/amplitude-product-benchmark-2025/index.md)** — September 2025 edition. Empirical product-usage benchmarks from 2,600+ companies (10,600+ digital products, 171B monthly users). Covers acquisition / activation / engagement / retention + 6 industry snapshots. 22 wiki pages.

## Cross-source convergence points

High-density cross-link pages where both books and reports contribute:

### Retention
- **[[Retention]]** (Jacco) + **[[User Retention]]** (Amplitude) — revenue-based vs user-activity-based; distinct metrics, complementary
- **[[Gross Revenue Retention]]** — lagging (renewal-time); paired with [[User Retention]] as leading indicator
- **[[Net Revenue Retention]]** — driven by user retention underneath
- **[[Retention Benchmarks (All Products)]]** — empirical percentiles
- **[[Enterprise Retention Benchmarks]]** — 7× gap at enterprise scale

### Acquisition
- **[[Acquisition]]** (Jacco's framework) + **[[Acquisition Growth Rate Benchmarks]]** (empirical)
- **[[Leaky Bucket Problem]]** — Amplitude's finding that acquisition doesn't predict retention; extends Jacco's "win the right customers" principle

### Activation / Onboarding
- **[[Bowtie]]** Onboarding stage + **[[Activation Rate]]** / **[[Activation Benchmarks]]**
- **[[Aha Moment]]** + **[[Recurring Impact]]** — tactical form of Jacco's Principle 5

### Engagement
- **[[DAU]]** / **[[MAU]]** (Jacco's Bowtie metrics) + **[[Engagement Rate]]** / **[[Engagement Benchmarks]]**
- **[[Durability]]** — Jacco's maturity stage paired with Amplitude's usage-depth data

### Industry / Segmentation
- **[[Market Segments]]** (Jacco's sizes) + **[[Industry Benchmarks]]** (Amplitude's verticals) — complementary axes

## How to use

- **Query Claude Code** with *"What do we know about X?"* — it reads both sources and synthesizes with cross-source citations
- **Browse the graph** in Obsidian to see concept clusters visually; cross-source edges reveal where theory meets empirical data
- **Check `_log.md`** for macro events (source additions, schema changes)
- **Inner `log.md`s** track per-source ingest history

## Structural rules (enforced by CLAUDE.md)

- **Canonical only.** Personal material (PRDs, decisions, ideas) gets declined.
- **Cross-source linking encouraged.** When a new source extends an existing concept, the existing page's Sources section gets updated — not a parallel page created.
- **Filename uniqueness across the vault.** `[[Retention]]` resolves whether you're in books/ or reports/.
