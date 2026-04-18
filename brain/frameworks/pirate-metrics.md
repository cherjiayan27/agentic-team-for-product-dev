# Pirate Metrics — AARRR

**Source:** Dave McClure (500 Startups), *Startup Metrics for Pirates*.

## What

Five-stage funnel framework for measuring a user's journey from first exposure to revenue and advocacy. Named because the initials spell "AARRR" (pirate growl).

## When to use

- Diagnosing where a funnel is bleeding
- Setting metrics for each stage of the product
- Prioritizing between growth investments
- Onboarding a new PM to the state of the product's health

## The five stages

| Stage | Question it answers | Example metric |
|---|---|---|
| **Acquisition** | How do users find us? | CAC, traffic by channel, signup conversion |
| **Activation** | Do users experience value on their first session? | % users who reach aha moment |
| **Retention** | Do users come back? | Day-30 retention, Week-12 retention |
| **Referral** | Do users tell others? | K-factor, NPS, referral rate |
| **Revenue** | Do users pay? | ARPU, conversion rate free → paid, LTV |

## Flow

```
Visitor     → signup         = Acquisition
Signup      → aha moment     = Activation
Active      → returns D7+    = Retention
Retained    → invites / NPS  = Referral
Any stage   → payment        = Revenue
```

Revenue can happen at any stage (immediate purchase, trial → paid, expansion) — it is a parallel stream, not only the end.

## Where most funnels actually leak

Most products over-index on Acquisition spend and under-invest in Activation.

Typical diagnostic order (fix in this sequence):

1. **Activation first.** If activation is poor, every acquisition dollar is wasted.
2. **Retention second.** A retained user is ~5× cheaper to grow than an acquired one.
3. **Revenue third.** Monetization only matters once activation + retention are real.
4. **Referral fourth.** Referral requires a happy user base (retention solved).
5. **Acquisition last.** Scale only after the bucket holds water.

The common anti-pattern is to reverse this order — fund paid acquisition before fixing activation.

## Applying AARRR

### For each stage, define:

- **The event** — what counts as "happening" at this stage (e.g., "signup" = account created AND email verified)
- **The cohort definition** — who is measured (weekly signup cohort, paid vs organic, persona)
- **The target number** — what good looks like for this category
- **The current number** — where the product is today
- **The gap** — what would need to change to close it

### Weights by product type

Different product categories prioritize stages differently.

| Product type | Top priority stages |
|---|---|
| Consumer social | Acquisition + Referral (growth loops) |
| B2B SaaS | Activation + Retention |
| Marketplace | Acquisition of both sides + Activation (first transaction) |
| Prosumer tool | Activation + Revenue (paid conversion) |
| Free-to-play gaming | Activation + Revenue (whales) |

## Common metric pairings

| Stage | Leading | Lagging |
|---|---|---|
| Acquisition | Visits, CPC | Signups |
| Activation | Aha moment completion | D1/D7 retention |
| Retention | Sessions per active user | MAU, cohort curves |
| Referral | Shares, invites sent | Invited-user signups |
| Revenue | Free-to-paid rate, ACV | MRR, LTV |

## Application rules

- Report one metric per stage, not five. Five metrics per stage is dashboard noise.
- Instrument cohort-level before aggregate. Aggregate MAU can grow while the cohort bleeds.
- When you name an issue, name the stage. "Users aren't paying" is a Revenue issue, not an Acquisition issue, and the fix is different.
- Referral is a separate motion, not a default. If the product has no natural sharing surface, don't force K-factor goals.

## When to relax

- AARRR assumes self-service signup. Sales-led products insert a Qualified → Opportunity → Won stage between Acquisition and Activation.
- Transactional products (e.g., tax filing) have a natural, terminal Revenue stage each year. Referral and ongoing Retention apply differently.
