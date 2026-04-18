# Log

Chronological, append-only record of work done in this vault.

Format: `## [YYYY-MM-DD] {ingest | query | lint} | {subject}`
Parseable via: `grep "^## \[" log.md | tail -N`

---

## [2026-04-18] scaffold | Vault initialised

Created vault at `~/Obsidian/revenue-architecture-brain/`.
Wrote `CLAUDE.md` (schema), `Memory.md` (user context seed), `index.md`, `log.md`, `.gitignore`.
Copied source PDF (`Revenue_Architecture_Jacco_van_der_Kooij.pdf`, 518 pages) into `raw/pdf/`.

## [2026-04-18] split | 16 chapter PDFs via qpdf

Installed qpdf via Homebrew. Split the source PDF into 16 chapter files in `raw/pdf-chapters/` using the ToC page ranges. Verified counts match.

## [2026-04-18] extract | 16 markdown files via pdftotext

Tool pivot: Firecrawl requires publicly-reachable URLs and does not accept local file uploads, so we switched to `pdftotext -layout` (already installed, produces clean text-layer extraction with preserved ligatures and layout). Output saved to `raw/markdown/`. Ch 2 spot-checked and judged good.

## [2026-04-18] ingest | Chapter 02: First Principles

Pilot source ingestion. Processed `raw/markdown/02-first-principles.md`.

Files touched:
- `wiki/sources/02-first-principles.md` (created)
- `wiki/frameworks/first-principles-of-recurring-revenue.md` (created)
- `wiki/frameworks/three-components-of-growth.md` (created)
- `wiki/frameworks/four-stages-of-growth.md` (created)
- `wiki/concepts/recurring-revenue.md` (created)
- `wiki/concepts/recurring-impact.md` (created)
- `wiki/concepts/acquisition.md` (created)
- `wiki/concepts/retention.md` (created)
- `wiki/concepts/expansion.md` (created)
- `wiki/concepts/risk-shift.md` (created)
- `wiki/concepts/customer-centric-growth.md` (created)
- `wiki/concepts/product-led-growth.md` (created, stub)
- `wiki/metrics/annual-recurring-revenue.md` (created, stub)
- `wiki/roles/chief-revenue-officer.md` (created, stub)
- `index.md` (updated)

14 new pages. 4 flagged as stubs — will be expanded when later chapters are ingested (likely Ch 5 Revenue Model, Ch 7 Mathematical Model, Ch 8 Operating Model, Ch 9 Growth Model, Ch 10 GTM Model).

## [2026-04-18] note | Checkpoint 4 — pilot review pending

Awaiting user review in Obsidian before ingesting the remaining 15 chapters. Review checklist:
- Page quality and tone acceptable?
- Schema in `CLAUDE.md` needs adjustment before scaling?
- Graph view shows sensible cluster?
- Any missing entity types (e.g. benchmarks, principles-as-separate-pages, diagrams as first-class)?

## [2026-04-18] fix | Rename wiki files Title Case to eliminate ghost nodes

Pilot review surfaced a bug: graph view showed paired ghost nodes (e.g. `recurring-revenue` dark + `Recurring Revenue` light) because `CLAUDE.md` had an internally-contradictory convention — kebab-case filenames + `[[Page Name]]` link style — and Obsidian's default resolver wants filename and link text to match.

Fix: renamed 13 wiki files to Title Case to match existing `[[Page Name]]` links. Source pages kept kebab-case numbered naming (`02-first-principles.md`) because they mirror `raw/markdown/` files.

Files renamed (all under `wiki/`):
- `frameworks/first-principles-of-recurring-revenue.md` → `frameworks/First Principles of Recurring Revenue.md`
- `frameworks/three-components-of-growth.md` → `frameworks/Three Components of Growth.md`
- `frameworks/four-stages-of-growth.md` → `frameworks/Four Stages of Growth.md`
- `concepts/recurring-revenue.md` → `concepts/Recurring Revenue.md`
- `concepts/recurring-impact.md` → `concepts/Recurring Impact.md`
- `concepts/acquisition.md` → `concepts/Acquisition.md`
- `concepts/retention.md` → `concepts/Retention.md`
- `concepts/expansion.md` → `concepts/Expansion.md`
- `concepts/risk-shift.md` → `concepts/Risk Shift.md`
- `concepts/customer-centric-growth.md` → `concepts/Customer-Centric Growth.md`
- `concepts/product-led-growth.md` → `concepts/Product-Led Growth.md`
- `metrics/annual-recurring-revenue.md` → `metrics/Annual Recurring Revenue.md`
- `roles/chief-revenue-officer.md` → `roles/Chief Revenue Officer.md`

Also updated:
- `CLAUDE.md` — clarified naming convention (source pages kebab-case with chapter number; everything else Title Case; link text must match filename)
- `index.md` — updated links to Title Case

All existing `[[Page Name]]` links inside the wiki pages now resolve correctly (they were already Title Case).

## [2026-04-18] ingest | Chapter 05: The Revenue Model

Processed `raw/markdown/05-revenue-model.md`. This is the foundation of Part II (Design) and introduces the Six-Layer Model Stack that structures the rest of the book. Also created forward stubs for the 5 model frameworks (Ch 6–10) to prevent ghost-node ambiguity when Ch 5 pages cross-reference them.

Files touched:
- `wiki/sources/05-revenue-model.md` (created)
- `wiki/frameworks/Revenue Model.md` (created)
- `wiki/frameworks/Six-Layer Model Stack.md` (created)
- `wiki/frameworks/Data Model.md` (created, stub for Ch 6)
- `wiki/frameworks/Mathematical Model.md` (created, stub for Ch 7)
- `wiki/frameworks/Operating Model.md` (created, stub for Ch 8)
- `wiki/frameworks/Growth Model.md` (created, stub for Ch 9)
- `wiki/frameworks/GTM Model.md` (created, stub for Ch 10)
- `wiki/concepts/Monetization Strategy.md` (created)
- `wiki/concepts/Ownership.md` (created)
- `wiki/concepts/Subscription.md` (created)
- `wiki/concepts/Consumption.md` (created)
- `wiki/concepts/Freemium.md` (created)
- `wiki/concepts/Value and Impact.md` (created)
- `wiki/concepts/Revenue Velocity.md` (created)
- `wiki/concepts/Phase Shift.md` (created)
- `wiki/concepts/Recurring vs Re-occurring Revenue.md` (created)
- `wiki/metrics/Win Rate.md` (created)
- `wiki/metrics/Annual Recurring Revenue.md` (updated — added Ch 5 source, GTM constraint, Adobe valuation)
- `wiki/concepts/Risk Shift.md` (updated — added Figure 5.6 extension across full arc)
- `index.md` (updated)

19 files touched: 18 created (2 frameworks + 5 forward-stub frameworks + 9 concepts + 1 metric + 1 source), 2 updated (ARR, Risk Shift). Next: Ch 7 Mathematical Model to promote ARR and other metric stubs.

## [2026-04-18] ingest | Chapter 07: The Mathematical Model

Processed `raw/markdown/07-mathematical-model.md`. Heaviest metric-defining chapter in the book. Promoted the Mathematical Model framework from stub to full, added the Growth Formula framework, and introduced 5 major metrics (GRR, NRR, MRR, LTV, ACV) with formulas. Added a partial Bowtie stub since Ch 7 uses the VM/CR variable conventions heavily — full Bowtie treatment awaits Ch 6.

Files touched:
- `wiki/sources/07-mathematical-model.md` (created)
- `wiki/frameworks/Mathematical Model.md` (promoted from stub)
- `wiki/frameworks/Growth Formula.md` (created)
- `wiki/concepts/Bowtie.md` (created — partial stub; Ch 6 will complete)
- `wiki/concepts/Nonlinearity.md` (created)
- `wiki/concepts/Compound Impact.md` (created)
- `wiki/concepts/Two Domains of the Bowtie.md` (created)
- `wiki/concepts/Hypergrowth.md` (created)
- `wiki/concepts/Unit Economics.md` (created)
- `wiki/concepts/Scenario Analysis.md` (created)
- `wiki/concepts/Volatility.md` (created)
- `wiki/concepts/Law of Diminishing Returns.md` (created)
- `wiki/metrics/Gross Revenue Retention.md` (created)
- `wiki/metrics/Net Revenue Retention.md` (created)
- `wiki/metrics/Monthly Recurring Revenue.md` (created)
- `wiki/metrics/Lifetime Value.md` (created)
- `wiki/metrics/Annual Contract Value.md` (created)
- `wiki/metrics/Annual Recurring Revenue.md` (promoted — formula added, full metric network linked)
- `wiki/metrics/Win Rate.md` (updated — Ch 7 mathematical basis; linked to Law of Diminishing Returns)
- `wiki/concepts/Revenue Velocity.md` (updated — Ch 7 two-domains note)
- `index.md` (updated)

20 files touched: 15 created (1 source + 1 promoted framework + 1 new framework + 9 concepts + 1 promoted metric + 4 new metrics wait — let me recount). Actually: 1 source, 1 promoted + 1 new framework, 9 new concepts (Bowtie, Nonlinearity, Compound Impact, Two Domains, Hypergrowth, Unit Economics, Scenario Analysis, Volatility, Law of Diminishing Returns), 5 new metrics (GRR, NRR, MRR, LTV, ACV), 3 updates (ARR promoted, Win Rate extended, Revenue Velocity extended). Total 20.

Key additions to the graph: every future chapter's metric references now have a canonical page. The metric cluster (ARR ↔ MRR ↔ ACV ↔ LTV ↔ GRR ↔ NRR) is tightly interlinked. The conceptual cluster (Nonlinearity ↔ Compound Impact ↔ Hypergrowth ↔ Volatility) provides the mathematical lens for the rest of the book. Next up: Ch 6 Data Model to complete Part II and promote the Bowtie stub.

## [2026-04-18] ingest | Chapter 06: The Data Model

Processed `raw/markdown/06-data-model.md`. Completes Part II (Design). Promoted Data Model and Bowtie from stubs to full pages. Added the Data Structure, Benchmark Model, and Four Types of Expansion frameworks. Created stubs for the three GTM motions (High/Medium/No Touch) which will be fleshed out in Ch 10. Added three role stubs (AM, SDR, AE) for Ch 8 promotion.

Files touched (15 new + 2 promoted):
- `wiki/sources/06-data-model.md` (created)
- `wiki/frameworks/Data Model.md` (promoted to full)
- `wiki/concepts/Bowtie.md` (promoted to full)
- `wiki/frameworks/Data Structure.md` (created)
- `wiki/concepts/Bowtie Metrics.md` (created)
- `wiki/frameworks/Benchmark Model.md` (created)
- `wiki/frameworks/Four Types of Expansion.md` (created)
- `wiki/concepts/Trendline.md` (created)
- `wiki/concepts/Champion.md` (created)
- `wiki/concepts/High Touch GTM Motion.md` (created, stub)
- `wiki/concepts/Medium Touch GTM Motion.md` (created, stub)
- `wiki/concepts/No Touch GTM Motion.md` (created, stub)
- `wiki/roles/Account Manager.md` (created, stub)
- `wiki/roles/Sales Development Representative.md` (created, stub)
- `wiki/roles/Account Executive.md` (created, stub)
- `index.md` (updated)

Part II is now complete. The static foundation (Revenue Model → Data Model → Mathematical Model) is fully in the wiki. Next: Ch 9 Growth Model to promote the Layer 5 framework stub.

## [2026-04-18] ingest | Chapter 09: The Growth Model

Processed `raw/markdown/09-growth-model.md`. Big chapter (73 pages) covering Part III's core framework. Promoted Growth Model stub to full page. Introduced the 12 Revenue Breakpoints framework. Added 10 new concepts covering growth patterns, stages, trends, breakpoints 7–9, and supporting metrics.

Files touched (20 total):
- `wiki/sources/09-growth-model.md` (created)
- `wiki/frameworks/Growth Model.md` (promoted from stub)
- `wiki/frameworks/12 Revenue Breakpoints.md` (created)
- `wiki/concepts/S-Curve.md` (created)
- `wiki/concepts/Growth Stages.md` (created)
- `wiki/concepts/Denominator Effect.md` (created)
- `wiki/concepts/T2D3 Growth Trend.md` (created)
- `wiki/concepts/Blitzscaling.md` (created)
- `wiki/concepts/Inflection Point.md` (created)
- `wiki/concepts/Scalability.md` (created)
- `wiki/concepts/Sustainability.md` (created)
- `wiki/concepts/Productivity.md` (created)
- `wiki/concepts/Swing Group.md` (created)
- `wiki/concepts/Founder-Led Growth.md` (created)
- `wiki/concepts/GTM Fit.md` (created)
- `wiki/metrics/CMGR.md` (created)
- `wiki/metrics/CAGR.md` (created)
- `wiki/metrics/CAC.md` (created, stub for Ch 10)
- `wiki/metrics/Cost to Serve.md` (created, stub for Ch 10)
- `wiki/metrics/Rule of 40.md` (partial; Ch 9.2.12 pending)
- `index.md` (updated)

Note: Breakpoints 10–12 (Interoperability, Durability, Profitability) are summarised in the 12 Revenue Breakpoints framework page but not yet expanded into their own concept pages. Deferred — they'll be most useful after Ch 10 and Ch 11 provide operating context. Next: Ch 10 GTM Model to promote the Layer 6 framework stub and extend PLG / GTM motion stubs.

## [2026-04-18] ingest | Chapter 10: The GTM Model

Processed `raw/markdown/10-go-to-market-model.md`. Promoted GTM Model from stub to full Layer 6 framework. Promoted PLG from stub to full concept. Introduced the 5 Touch GTM Motions and Channels frameworks, plus Product-Led Sales, Touch Concept, GTM Maturity Stages, Durability, Interoperability, Market Segments, Sales/Marketing/CS Motions concept pages. Added 3 metric stubs (CAC Payback, DAU, FCF) and 1 role stub (Customer Success Manager).

Files touched (20+):
- `wiki/sources/10-go-to-market-model.md` (created)
- `wiki/frameworks/GTM Model.md` (promoted from stub)
- `wiki/frameworks/5 Touch GTM Motions.md` (created)
- `wiki/frameworks/Channels.md` (created)
- `wiki/concepts/Product-Led Growth.md` (promoted from stub)
- `wiki/concepts/Product-Led Sales.md` (created)
- `wiki/concepts/Touch Concept.md` (created)
- `wiki/concepts/GTM Maturity Stages.md` (created)
- `wiki/concepts/Durability.md` (created)
- `wiki/concepts/Interoperability.md` (created)
- `wiki/concepts/Market Segments.md` (created)
- `wiki/concepts/Sales Motions.md` (created)
- `wiki/concepts/Marketing Motions.md` (created)
- `wiki/concepts/Customer Success Motions.md` (created)
- `wiki/concepts/Dedicated Touch GTM Motion.md` (created, stub)
- `wiki/metrics/CAC Payback.md` (created)
- `wiki/metrics/DAU.md` (created)
- `wiki/metrics/FCF.md` (created)
- `wiki/roles/Customer Success Manager.md` (created)
- `index.md` (will update)

Part III now has Growth Model and GTM Model fully in. Only Operating Model (Ch 8) remains in Part III. Next: Ch 8 Operating Model.

## [2026-04-18] ingest | Chapter 08: The Operating Model

Processed `raw/markdown/08-operating-model.md`. Promoted Operating Model from stub to full Layer 4 framework. Introduced SPICED — the standardised customer-centric methodology interface — plus Critical Event Timeline, Ideal Customer Profile, Buying Center, Rational vs Emotional Impact, Critical Event, Means and Methods, Man in the Hole story arc, and Decider role.

Part III is now complete. Full six-layer stack has all models promoted.

Files touched (11 new):
- `wiki/sources/08-operating-model.md`
- `wiki/frameworks/Operating Model.md` (promoted)
- `wiki/frameworks/SPICED.md`
- `wiki/frameworks/Critical Event Timeline.md`
- `wiki/frameworks/Ideal Customer Profile.md`
- `wiki/concepts/Rational vs Emotional Impact.md`
- `wiki/concepts/Critical Event.md`
- `wiki/concepts/Buying Center.md`
- `wiki/concepts/Means and Methods.md`
- `wiki/concepts/Man in the Hole.md`
- `wiki/roles/Decider.md`

Next: Ch 1 Introduction (book-level thesis), then back-fill Ch 3/4 (Part I completion) and Ch 11 + front/back matter.

## [2026-04-18] ingest | Chapters 1, 3, 4, 11 + Prologue, Epilogue, Annex, Abbreviations, Bibliography

Completed the remaining chapters and all front/back matter in the final batch. Ch 1 thesis + Recurring Revenue Factory; Ch 3 modeling philosophy; Ch 4 classic-funnel-to-Bowtie; Ch 11 Think Big/Act Small/Move Fast + Moments That Matter. Back matter: Prologue (GGB metaphor), Epilogue (Pioneer Spirit), Annex (stub for derivations), Abbreviations (acronym glossary mapped to wiki pages), Bibliography (external references).

22 files touched across these ingests. See git history for specifics.

## [2026-04-18] milestone | Full book ingested

All 16 sections of Revenue Architecture are in the wiki.

Final counts:
- 16 source pages (complete)
- 21 framework pages (all 6 Layer Stack frameworks promoted from stubs; plus First Principles, Three Components of Growth, Four Stages, Four Types of Expansion, Data Structure, Benchmark Model, Growth Formula, 12 Revenue Breakpoints, 5 Touch GTM Motions, Channels, SPICED, Critical Event Timeline, Ideal Customer Profile, Recurring Revenue Factory)
- 69 concept pages covering every significant term
- 15 metric pages with formulas
- 6 role pages
- **127 total wiki pages**

The wiki represents Jacco's complete framework. Remaining enrichment:
- Promote thin stubs (CAC, CTS, Rule of 40, FCF) with rigorous chapter-specific content from Annex or re-read
- Add the user's own lived material on top (customer calls, PRDs, podcasts, other books) — the compounding phase Karpathy's pattern enables
