# Retention Benchmarks

**Source:** Amplitude *Product Benchmark Report*; Mixpanel *Product Benchmark Report*; Reforge retention research.

## What

Industry benchmarks for user retention curves, stickiness ratios, and activation moments. Used to answer: "is this retention good, bad, or catastrophic for this product category?"

## When to use

- Evaluating whether a cohort retention curve is healthy for the product's category
- Choosing retention targets for a new product
- Diagnosing the leaky-bucket problem (high acquisition, low retention)
- Deciding whether activation, habit, or long-term retention is the priority bottleneck

## Key concepts

### The retention curve

Three patterns, plotted as `% of users active on day N / users who signed up on day 0`:

1. **Smiling curve** — drops, then plateaus. Users who survive the drop-off are retained long-term. This is the target pattern for most consumer products.
2. **Flat curve** — drops then stays at zero. Product has no habit or ongoing value. Dead product category or wrong model.
3. **Growing curve** — drops then rises. Users return more over time. Rare. Indicates strong network effects or embedded workflow.

### Aha moment (activation)

The specific action that correlates with long-term retention. Found by comparing retained cohorts to churned cohorts and looking for the behavior that precedes retention.

Examples (public):
- Facebook — 7 friends in 10 days
- Slack — 2,000 messages sent within a team
- Dropbox — 1 file uploaded on 1 device on day 1
- Twitter — 30 follows

A product without an identified aha moment is guessing at activation.

### Leaky bucket

When churn ≥ acquisition, growth stalls regardless of top-of-funnel investment. Diagnosable via cohort retention, not aggregate MAU (aggregate hides the leak when acquisition is growing).

**Test:** if acquisition doubled but next-month retention stayed flat, the bucket is leaking.

### Product usage interval

The natural cadence at which retained users return:

| Product | Natural cadence | Measure retention over... |
|---|---|---|
| News, social, messaging | Daily | 7, 14, 28 days |
| Work tool, email, docs | Weekly | 4, 8, 12 weeks |
| Banking, travel booking | Monthly | 3, 6, 12 months |
| Tax software, bday card | Annual | 1 year |

Wrong interval → misleading numbers. Measuring a monthly-cadence product at Day-1 tells you nothing.

## Benchmarks

### Stickiness ratio — DAU/MAU

```
Stickiness = Daily Active Users / Monthly Active Users
```

| Category | Median | Good | Best-in-class |
|---|---|---|---|
| Consumer social | 25% | 40% | 50%+ |
| Consumer productivity | 15% | 30% | 45%+ |
| B2B SaaS | 10% | 20% | 35%+ |
| Gaming | 20% | 30% | 40%+ |
| Fintech | 5% | 15% | 25%+ |

### Day-30 retention (Day-30 actives / Day-0 signups)

| Category | Poor | Median | Good |
|---|---|---|---|
| Consumer social | <10% | 20% | 35%+ |
| Consumer productivity | <15% | 25% | 40%+ |
| B2B SaaS | <20% | 40% | 60%+ |
| Mobile games | <5% | 15% | 25%+ |

### Week-12 retention (B2B SaaS focus)

| Tier | W12 retention |
|---|---|
| Leaky | <20% |
| Median | 30–40% |
| Healthy | 50%+ |

## Application rules

- Always cite the benchmark category. A 20% Day-30 is bad for social and great for gaming.
- Pair retention with engagement depth (sessions per active user, actions per session) — a flat curve at high engagement is different from flat curve at one-session depth.
- New-user retention (first 30 days) and existing-user retention (ongoing) have different shapes. Report them separately.
- Retention is lagging. Activation rate is the leading indicator — fix activation first.

## Diagnosis path

```
Aggregate MAU growing but LTV falling?           → leaky bucket, cohort retention dropping
Activation OK, Day-30 poor?                      → no habit formed, missing aha moment
Day-30 OK, Week-12 poor?                         → no long-term value, saturation
Day-30 poor across all cohorts?                  → onboarding or activation is broken
Day-30 poor only for paid acquisition cohorts?   → acquisition channel/persona mismatch
```

## When to relax

- Transactional products (e.g., travel booking) have natural retention cadences of months — don't expect weekly return.
- B2B tools with low-usage-high-value personas (e.g., admin dashboards) optimize for presence on key events, not session frequency.
