---
type: source
tags: [revenue-architecture, design, data-model, bowtie]
sources: []
updated: 2026-04-18
---

# Chapter 06 — The Data Model

**Source:** `raw/markdown/06-data-model.md` (original PDF: `raw/pdf-chapters/06-data-model.pdf`, book pages 157–193)

## Thesis

The classic marketing-and-sales funnel (AIDA, 1898) ends at the sale — where, in a subscription business, the actual revenue journey *begins*. The [[Data Model]] extends the funnel into a **Bowtie** that covers the entire customer journey from awareness through lifetime. A standardised [[Data Structure]] — Volume, Conversion, Time, and Performance metrics — layers on top to make every GTM motion comparable against industry benchmarks and against the business's own trendlines.

## Key claims

- **The funnel ends at the sale; the Bowtie covers the whole journey.** AIDA (Awareness → Interest → Desire → Action) was designed for ownership-era selling where the purchase is the end point. Subscription businesses must extend it into post-sale stages: onboarding, retention, expansion.
- **Value vs Impact balance in the Bowtie** ([[Value and Impact]]). Ownership models tilt the Bowtie leftward (value-heavy); consumption models tilt it rightward (impact-heavy); subscription sits in balance.
- **Nine lifecycle stages (full Bowtie):**
  1. Awareness
  2. Education
  3. Selection
  4. Prioritization ← NEW stage, sits between Selection and Commit
  5. Mutual Commit
  6. Onboarding
  7. Retention
  8. Expansion
- **Standardised Data Structure (§6.2):**
  - **Volume Metrics (VM1–VM9)** — counts/revenue at each stage
  - **Conversion Metrics (CR1–CR8, with CR9 reserved for closed loops)** — output/input ratios between stages
  - **Time Metrics (Δt1–Δt8)** — *waiting* time between actions (not action duration)
  - **Performance Metrics** — cross-domain ratios (e.g. MRR per deal, win rate vs retention)
- **Terminology is GTM-motion-specific, but the standardised VM/CR/Δt numbering isn't.** VM2 = MQL in inbound = PQL in PLG = MQA in enterprise. The structure allows comparison across motions.
- **Four types of expansion** (Figure 6.5, §6.2.2 CR8):
  - **Upsell** — sell a new product to the same group for more impact
  - **Cross-sell** — sell another group within the same company on impact
  - **Renew** — sell the same impact to the same group
  - **Resell** — resell a new [[Champion]] on the same impact
- **Champions and benefactors.** A Champion is the person internally advocating for the product; a Benefactor is the person/team deriving impact from it. Champion churn is a key resell opportunity — and risk.
- **Benchmarking** comes in two forms:
  - **Industry benchmark** (Table 6.5) — broad, useful for sketching plans but not for precise operation
  - **Self-benchmark via trendlines** — more reliable; compares the business to its own past, typically LTM (last twelve months)
- **Trendline example:** SMB win rate trending from 30% → 25% means requiring 4 opportunities for every 1 win instead of 3.33 — a 20% increase in opportunity demand. Detected early via trendlines, corrective lead-gen investment can prevent a revenue miss.
- **Three canonical GTM motions map onto the Bowtie** (Figures 6.9–6.11; full treatment in Ch 10):
  - **High Touch** (Enterprise) — Target → MQA → Opportunity → Qualified → Commit → Onboard → Retention → Expansion
  - **Medium/Low Touch** (SMB / mid-market) — Prospect → MQL → SQL → SAL → Win → ...
  - **No Touch / Product-Led Growth** — Prospect → Hand-raise → PQL → PQA → Sign-up → ... MAU
- **PLG is a distinct motion** that bypasses traditional sales stages. Not a marketing campaign, not a lead-gen tool — intrinsic to the product. Key metrics: sign-ups, MAU/DAU/WAU.
- **Funnel → Bowtie comparison (Table 6.7):** the Bowtie accommodates all three monetization strategies (not just ownership), measures many more metrics (CAC Payback, CTS, FCF, GRR, NRR per motion), and operates on closed-loop feedback.
- **Combining Revenue Model + Data Model** — Figures 6.12–6.14 visualise the Bowtie tilting leftward under ownership, rightward under consumption, balanced under subscription.

## Frameworks introduced / promoted

- [[Data Model]] *(promoted to full)*
- [[Bowtie]] *(promoted to full)*
- [[Data Structure]] — the VM/CR/Δt standardised measurement structure
- [[Benchmark Model]] — industry benchmark + trendline methodology
- [[Four Types of Expansion]] — Upsell, Cross-sell, Renew, Resell

## Concepts introduced

- [[Bowtie Metrics]] — Volume / Conversion / Time / Performance metrics (unified concept page)
- [[Trendline]] — self-benchmarking via LTM comparison
- [[Champion]] — internal advocate; distinct from Benefactor

## GTM motion stubs (Ch 10 promotion pending)

- [[High Touch GTM Motion]] *(stub)*
- [[Medium Touch GTM Motion]] *(stub)*
- [[No Touch GTM Motion]] *(stub)* — equivalent to PLG

## Roles introduced (stubs for Ch 8 promotion)

- [[Account Manager]] *(stub)*
- [[Sales Development Representative]] *(stub)*
- [[Account Executive]] *(stub)*

## Notable diagrams

- **Figure 6.1** — Bowtie with Value→Impact balance
- **Figure 6.2** — Data Structure: input/output/conversion/time metrics in a sub-system
- **Figures 6.3, 6.4, 6.6, 6.15** — Bowtie with overlaid VM, CR, Δt
- **Figure 6.5** — Four Types of Expansion 2×2 matrix
- **Figure 6.7** — 3×3 performance improvement matrix (CR3 × CR4)
- **Figure 6.8** — Trendline example (lead development vs win rate)
- **Figures 6.9–6.11** — GTM motions (High Touch, Medium Touch, No Touch/PLG) on the Bowtie
- **Figures 6.12–6.14** — Revenue Model + Data Model combined, tilt visualisations
- **Table 6.5** — Industry benchmark by ACV tier
- **Table 6.7** — Classic Funnel vs Bowtie comparison

## Section map

- **6.1** — The Data Model (Bowtie; Value/Impact balance)
- **6.2** — The Data Structure (VM, CR, Δt, Performance metrics; expansion types)
- **6.3** — Benchmark Model (industry benchmark + trendline)
- **6.4** — Applications (High/Medium/No Touch GTM motions on the Bowtie)
- **6.5** — Combining Revenue + Data Models
- **6.6** — Exercises
- **6.7** — Recap

## My notes

*Reserved for user.*
