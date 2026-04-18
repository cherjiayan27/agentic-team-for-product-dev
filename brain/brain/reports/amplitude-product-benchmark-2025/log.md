# Amplitude 2025 Benchmark Report — Log

Source-scoped activity log. Cross-source events live in the root `_log.md`.

Format: `## [YYYY-MM-DD] {ingest | query | lint} | {subject}`

---

## [2026-04-18] setup | Folder created + PDF copied

Created `reports/amplitude-product-benchmark-2025/` with subdir tree. Copied `the-product-benchmark-report.pdf` from `~/Downloads/` into `raw/pdf/`.

## [2026-04-18] split + extract | 8 chapters

Split into 8 chapter PDFs via qpdf (actual page boundaries verified via per-page header check — printed ToC numbers were off by 1–2 pages). Extracted markdown via pdftotext -layout. Clean extraction; minor running-header noise that gets stripped on ingest.

## [2026-04-18] ingest | Chapter 05: Retention (pilot)

Pilot chapter. Chosen for richest cross-link density with Revenue Architecture canonical pages.

Files touched:
- `wiki/sources/05-retention.md` (created)
- `wiki/concepts/User Retention.md` (created — distinct from Jacco's revenue-based [[Retention]])
- `wiki/concepts/Retention Cohort Analysis.md` (created)
- `wiki/benchmarks/Retention Benchmarks (All Products).md` (created)
- `wiki/benchmarks/Enterprise Retention Benchmarks.md` (created)
- Cross-source extensions:
  - `books/revenue-architecture/wiki/concepts/Retention.md` (updated — added user-retention distinction)
  - `books/revenue-architecture/wiki/metrics/Gross Revenue Retention.md` (updated — user-retention as leading indicator)
  - `books/revenue-architecture/wiki/concepts/Recurring Impact.md` (updated — empirical first-week evidence)
- `index.md` (updated)

5 new pages in the Amplitude wiki, 3 existing RA pages extended with Amplitude citations. The cross-source linking pattern is working: `[[User Retention]]` is a new concept linked from `[[Retention]]` (Jacco), so both pages now show up in a query for "retention" with proper distinction.

## [2026-04-18] ingest | Chapters 1, 2, 3, 4, 6, 7, 8 (batch)

Batch ingestion of the remaining 7 chapters after the Retention pilot.

Files touched (17 new):
- wiki/sources/01-how-top-products-grow.md
- wiki/sources/02-acquisition.md
- wiki/sources/03-activation.md
- wiki/sources/04-engagement.md
- wiki/sources/06-industry-snapshot.md
- wiki/sources/07-customer-experiences.md
- wiki/sources/08-methodology.md
- wiki/concepts/Leaky Bucket Problem.md
- wiki/concepts/North Star Metric.md
- wiki/concepts/Aha Moment.md
- wiki/concepts/Product Usage Interval.md
- wiki/metrics/Activation Rate.md
- wiki/metrics/Engagement Rate.md
- wiki/benchmarks/Acquisition Growth Rate Benchmarks.md
- wiki/benchmarks/Activation Benchmarks.md
- wiki/benchmarks/Engagement Benchmarks.md
- wiki/benchmarks/Industry Benchmarks.md
- index.md (updated)

Total Amplitude wiki pages: 22 (8 sources + 6 concepts + 2 metrics + 6 benchmarks).

All chapters ingested. Amplitude report is complete in the brain.
