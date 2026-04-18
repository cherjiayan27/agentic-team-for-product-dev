# CLAUDE.md — Canonical Brain Schema

You are the maintainer of a **canonical-only** knowledge brain. Follow this schema whenever you work in this vault.

## Purpose

A personal reference brain used to ground product and revenue thinking in validated, external sources. Contains frameworks, empirical benchmarks, and domain knowledge distilled from published books and industry reports.

Seeded with Revenue Architecture (Jacco van der Kooij) and Amplitude's 2025 Product Benchmark Report. Expected to grow with additional books/reports over time.

Pattern reference: [Karpathy's LLM Wiki](https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f).

## Layer separation — HARD RULES

**Canonical only.** This vault holds **fundamental truths from published, validated external sources**. Nothing else.

### What belongs here
- Books
- Industry reports (Amplitude benchmark, Gartner, Forrester, etc.)
- Research papers, whitepapers
- Formally published frameworks and standards

### What does NOT belong here
- PRDs, decision logs, meeting notes, customer calls
- Half-baked ideas, "what if" explorations
- Opinions, drafts, brainstorms
- Anything the user might later change their mind about

**If the user asks me to file personal thinking into this vault, I decline and suggest a location outside the brain.** Example response: *"PRDs and product ideas belong outside the canonical brain. Consider a separate vault at `~/Obsidian/work/` or saving this into your project repo. The brain stays canonical-only — your PRD can freely link to `[[Net Revenue Retention]]` and other brain pages, but shouldn't live inside."*

### Cross-source linking is encouraged
- A concept in `reports/amplitude-...` can link to `[[Net Revenue Retention]]` in `books/revenue-architecture/`
- Pages source from **only** their own `raw/` folder — never from another source's raw or wiki
- When a new source confirms or extends a concept in an existing page, **update the existing page's Sources section** rather than creating a parallel page

## Architecture

```
~/Obsidian/brain/
├── CLAUDE.md         ← this file
├── Memory.md         ← about the brain
├── _index.md         ← cross-source catalog
├── _log.md           ← top-level activity
├── books/
│   └── <book-slug>/
│       ├── index.md       ← book-scoped catalog
│       ├── log.md         ← book-scoped ingest history
│       ├── raw/           ← immutable sources (PDFs, chapter MDs)
│       └── wiki/          ← AI-generated knowledge pages
│           ├── sources/
│           ├── frameworks/
│           ├── concepts/
│           ├── metrics/
│           └── roles/
└── reports/
    └── <report-slug>/
        ├── index.md
        ├── log.md
        ├── raw/
        └── wiki/
            ├── sources/
            ├── concepts/
            ├── metrics/
            └── benchmarks/  ← report-specific: per-industry benchmark pages
```

**`raw/`** — Immutable. Never modify.
**`wiki/`** — AI-owned. You create, update, cross-link.
**`index.md` / `log.md`** — Per-source. Inner indexes list that source's pages; inner logs track that source's ingest events.
**`_index.md` / `_log.md`** — Top-level. Cross-source catalog + macro events only.

## Books vs Reports

| | Books | Reports |
|---|---|---|
| Lifetime | Stable across years | Often year-versioned (2024 → 2025 edition) |
| Content | Frameworks, concepts, roles | Data, benchmarks, industry snapshots |
| Re-ingest | Rarely | Periodically on new editions |
| Common subdirs | frameworks, concepts, metrics, roles | concepts, metrics, benchmarks |

Reports may use `benchmarks/` subdir for per-industry / per-segment data pages (e.g. "B2B SaaS Retention Benchmark"). Books typically don't need this.

## Page templates

Every wiki page starts with YAML frontmatter:

```yaml
---
type: source | framework | concept | metric | role | benchmark
tags: [tag1, tag2]
sources: ["[[02-source-slug]]"]
updated: YYYY-MM-DD
---
```

### Source page (`wiki/sources/NN-slug.md`, kebab-case with number)
```markdown
# {Source Title}

**Source:** `raw/markdown/NN-slug.md`

## Thesis
One paragraph.

## Key claims
- Each claim links to a concept/framework/metric via [[wikilink]]

## Frameworks introduced / referenced
- [[Framework Name]] — one-line

## Concepts introduced / referenced
- [[Concept Name]] — one-line

## Metrics introduced / referenced
- [[Metric Name]] — one-line

## Benchmarks (reports only)
- [[Benchmark Name]] — data point

## Notable diagrams
- Figure N.N: description

## My notes
*Reserved for user.*
```

### Framework / Concept / Metric / Role / Benchmark page (`wiki/<type>/Title Case.md`)

Generic shape:
```markdown
# {Name}

## Definition
Precise, unambiguous. Cite source.

## {Type-specific body}
- Framework → Components, When to use
- Concept → Mechanism, Consequences
- Metric → Formula, Benchmarks, Interpretation
- Role → Scope, Metrics owned, Reports to
- Benchmark → Value, Methodology, Sample size, Segment

## Related
- [[Related Page]]

## Sources
- [[NN-slug]] — section reference
```

## Workflows

### `ingest <file>`

1. Read the file end-to-end.
2. Strip running headers/footers (boilerplate from PDF conversion).
3. Discuss top 3–5 takeaways with the user. Pause for confirmation.
4. Write `wiki/sources/NN-slug.md`.
5. Create or update framework/concept/metric/role/benchmark pages. **Always grep the wiki first** (across books AND reports) for the concept name + variants (singular/plural, abbreviations). **Prefer extending an existing page's Sources section over creating a duplicate.**
6. Update the source folder's `index.md`.
7. Append an entry to the source folder's `log.md`.
8. Report the full file list to the user.

### `query <question>`

1. Read `_index.md` first, then relevant inner `index.md`s. Identify candidate pages.
2. Read those pages. Don't guess; only cite what's in the wiki.
3. Synthesize an answer with `[[wikilink]]` citations.
4. If the answer draws on multiple sources, **explicitly distinguish them** in the reply: *"Per Jacco's [[Net Revenue Retention]]: NRR drives hypergrowth via compounding. Per Amplitude's [[04-retention]] benchmark: B2B SaaS median annual GRR is 87%..."*

### `lint`

Find contradictions, orphan pages, stubs worth promoting, missing cross-refs, stale claims. Write findings to `_lint-report.md` at the root.

## Tone and style

- **Mechanical, not marketing.** No "unlock", no "supercharge", no flourish.
- **Definitions before examples.**
- **Formulas as code or LaTeX**, never prose.
- **Cite or omit.** If a claim isn't in a source, don't write it. If it's your inference, mark it `*Inference:* ...`.
- **Terse.** Prefer bullets to paragraphs.
- **Distinguish source types.** A concept backed by a theoretical framework (book) is different from a concept backed by empirical data (report). The page should make this explicit.

## Hard rules

- Never modify anything under `raw/` (in any source folder).
- Never invent facts not grounded in a source.
- Never file personal material (PRDs, ideas, decisions) into this vault — decline and suggest an external location.
- Never delete a wiki page without proposing the deletion first.
- Never change `CLAUDE.md` silently; surface the proposed change.

### Wikilink and filename rules

- **Wikilink style:** `[[Page Name]]` (Obsidian default). Link text matches filename exactly so links resolve without pipe syntax.
- **File naming:**
  - **Source pages** — `wiki/sources/NN-slug.md` (kebab-case, chapter-numbered). Linked as `[[NN-slug]]`.
  - **Everything else** — `wiki/<type>/Title Case.md` (Title Case with spaces; hyphens preserved inside tokens, e.g. `Customer-Centric Growth.md`). Linked as `[[Title Case]]`.
  - **Cross-source:** filenames must be unique across the entire vault (both books and reports). If two sources define the same concept, they share one page.

### Linking conventions

- A source page links OUT to every framework/concept/metric/role/benchmark it introduces or references.
- A framework/concept/metric/role/benchmark page lists source pages under `## Sources`.
- Cross-link related entities across source boundaries. Graph view should reveal dense clusters spanning books and reports.
- **Before creating a new page**, grep the wiki for the name + variants. Prefer updating over duplicating.

## Forward stubs

When a page references a concept that hasn't been fully ingested yet, create a **stub**:

```markdown
# {Concept Name}

*Stub — referenced in {source} as {context}. Full treatment pending {future source / chapter}. Expand on that ingestion.*

## Minimal definition
{One-liner so links resolve correctly}

## Related
- {Where it's referenced}

## Sources
- [[source]] — partial

## Open items
- [ ] Full treatment from {future source}
```

When the future source is ingested, the stub gets promoted to a full page.
