# Revenue Architecture

**Source:** Jacco van der Kooij, *Revenue Architecture* (Winning By Design).

## What

A framework for designing the full revenue engine of a recurring-revenue business — from awareness through expansion. Treats revenue generation as a system with inputs, conversion rates, and compounding feedback loops, not a pipeline of independent stages.

## When to use

- Designing pricing, packaging, or GTM motion for a SaaS product
- Diagnosing why growth is slowing despite good top-of-funnel
- Deciding whether to optimize acquisition vs. retention vs. expansion
- Setting leading and lagging revenue metrics

## Key concepts

### The Bowtie

The customer journey is symmetric — acquisition (left side) mirrors retention/expansion (right side). Churn on the right undoes new ARR on the left. A leaky bowtie makes top-of-funnel spend unprofitable.

```
  Awareness                       Impact
        \                        /
     Education                 Usage
          \                   /
       Evaluation          Adoption   ← Activation moment
            \              /
         Onboarding → Customer ← Renewal
                              \
                               Expansion
```

### Six-Layer Model Stack

Decisions cascade top-down:

1. **Market** — who do you serve, and how big is the opportunity
2. **Offering** — what you sell and how it is priced
3. **Organization** — how the revenue team is structured
4. **Go-to-Market** — which motions you run (see `gtm-motions.md`)
5. **Operational** — systems, data, compensation
6. **Product** — the product itself (infrastructure for the other layers)

A misalignment at any layer breaks the stack below.

### Growth Formula

```
Growth Rate = (New ARR + Expansion ARR − Churned ARR) / Starting ARR
```

Three levers: acquisition, expansion, churn. Improving one at the expense of another is noise, not progress.

### SPICED Discovery

Customer conversation framework for pipeline sales calls:
- **S**ituation — current state
- **P**ain — specific, quantified
- **I**mpact — business consequence
- **C**ritical Event — why now
- **D**ecision Criteria — what they are evaluating against

### 5 Touch GTM Motions

1. **Marketing-led** — content, SEO, demand gen
2. **Inbound-led** — product-qualified leads, free trial
3. **Outbound-led** — SDR + AE motion
4. **Partner-led** — channel, ISV, integrators
5. **Community-led** — developer relations, network effects

Most companies run 2–3 motions blended. Single-motion companies over-index on their loudest channel.

## Metric vocabulary

### Revenue

| Metric | Formula / Definition |
|---|---|
| **ARR** | Annualized recurring revenue. Subscription value × 12 (for monthly) or × 1 (for annual). |
| **MRR** | Monthly recurring revenue. |
| **ACV** | Annual contract value — average revenue per customer per year. |
| **New ARR** | ARR added this period from new customers. |
| **Expansion ARR** | ARR added from existing customers (seats, upsell, cross-sell). |
| **Churned ARR** | ARR lost from cancellations. |
| **Contraction ARR** | ARR lost from downgrades (kept customer, lower spend). |

### Retention

| Metric | Formula |
|---|---|
| **GRR (Gross Retention)** | `(Starting ARR − Churned ARR − Contraction ARR) / Starting ARR` |
| **NRR (Net Retention)** | `(Starting ARR − Churn − Contraction + Expansion) / Starting ARR` |
| **Logo Retention** | `# customers retained / # customers at start` |

**Benchmarks (SaaS median):**
- GRR target: **90%+** (below 80% = leaky bucket)
- NRR target: **110%+** (best-in-class 120–140%)

### Unit economics

| Metric | Formula |
|---|---|
| **LTV** | `ACV × Gross Margin × (1 / Churn Rate)` |
| **CAC** | Sales + marketing spend / new customers acquired |
| **LTV:CAC** | Target ≥ 3:1 (below = not profitable to acquire) |
| **CAC Payback** | `CAC / (ACV × Gross Margin)` in months. Target ≤ 12 months. |

### 12 Revenue Breakpoints

Known ARR plateaus where growth commonly stalls: $1M, $3M, $10M, $30M, $100M, $300M, $1B, etc. Each breakpoint usually requires a fundamental change to one or more layers of the six-layer stack (offering, org, GTM, product).

## Application rules

- Cite specific metrics (`GRR 87%`, not "retention is okay")
- Target numbers get concrete thresholds (`NRR 110%`, `CAC payback ≤ 12 months`)
- When a customer problem is "retention," check GRR first — contraction (downgrade) and churn (cancellation) are different diagnoses
- When growth slows, check whether new ARR dropped or expansion dropped or churn rose — the three are different levers

## When to relax

- Pre-revenue products have no ARR to measure. Lean on activation + retention cohorts instead.
- High-velocity usage-based products (e.g., API-priced) compute NRR at cohort level, not aggregate, to separate seat growth from consumption growth.
