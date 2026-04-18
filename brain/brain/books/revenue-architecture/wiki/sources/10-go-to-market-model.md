---
type: source
tags: [revenue-architecture, build, gtm-model]
sources: []
updated: 2026-04-18
---

# Chapter 10 — The GTM Model

**Source:** `raw/markdown/10-go-to-market-model.md` (book pages 379–448)

## Thesis

Most companies fail not from a bad product but from **choosing the wrong GTM motion or running the right one poorly**. The [[GTM Model]] is a unifying X-Y framework — ACV on X-axis, deal volume per year on Y-axis — that maps marketing, sales, and customer success motions together into five **touch-based GTM motions**: No Touch, Low Touch, Medium Touch, High Touch, Dedicated Touch. Each motion is **powered by a different engine** (Product / Velocity / Content / Brand / Relationships) and cannot be trivially swapped. Running multiple GTM motions without an explicit [[Operating Model]] creates [[Interoperability]] failures that drive costs exponentially.

## Key claims

- The GTM Model is the topmost, most dynamic layer of the [[Six-Layer Model Stack]]. Unlike static layers (Revenue, Data, Mathematical), it evolves constantly with markets, tools, and AI.
- **X-Y framework (Figure 10.3):** ACV on the x-axis (continuous, logarithmic in spirit), number of deals/year on the y-axis (logarithmic). Every GTM motion lives at an intersection.
- **Market segments mapped to the framework** (Figure 10.4): Consumers → Pro Users → Small Teams → VSB → SMB → Mid-Market → Enterprise → F500.
- **Sales Motions** (5):
  1. Self-Service (Shopify, Dropbox)
  2. Inside Sales 1-Stage (Adobe Effects pro-user)
  3. Inside Sales 2-Stage (SDR + AE; Procore-style vertical)
  4. Field Sales
  5. Named-Account Sales
- **Marketing Motions** (5):
  1. Inbound (SEO, content, paid, PLG loops)
  2. Outbound (email campaigns, nurture, newsletters)
  3. Targeted / ABM (account-specific campaigns)
  4. Networking (small-group, industry events, professional societies)
  5. Word of Mouth (referrals, influencer, TikTok/LinkedIn/X)
- **Customer Success Motions** (2 channels + 3 approaches):
  - Channels: Community (knowledge base, power users, chatbots); Helpdesk (ticketing, live chat)
  - Approaches: Volume-Based (1 CSM per 500 accounts), Vertical-Based (industry specialist CSMs), Account-Based (named-account CSMs for F500)
- **The Touch Concept** — unifies Marketing + Sales + CS into one coherent motion. Originally from David Skok (2010). Five levels: No / Low / Medium / High / Dedicated. Each aligns the three functions toward a consistent customer engagement level.
- **Each GTM motion has a different engine** (Table 10.2):
  - No Touch: **Product** — UX drives word-of-mouth
  - Low Touch: **Velocity** — easy-to-deploy drives word-of-mouth
  - Medium Touch: **Content** — thought leadership drives events/webinars
  - High Touch: **Brand** — expert people drive networking
  - Dedicated Touch: **Relationships** — responsiveness drives CxO-to-CxO referrals
- **Human involvement multiplies cost by 5x–20x**. Salaries vs quota (Table 10.1):
  - Self-service: $0 (allocated to marketing)
  - Inside Sales 1-stage: $45–60K cost / $240–480K quota
  - Inside Sales 2-stage: $150–250K cost / $480–960K quota
  - Field Sales: $250–500K cost / $720K–1.4M quota
  - Field + SE: $350–800K / $960K–2M quota
  - Named Account Team: $600K–2M / $1M–10M quota
- **Cost to serve one customer is exponential across motions** (Figure 10.10): ~$10 (No Touch) → ~$100 (Low) → ~$1,000 (Medium) → ~$10,000 (High) → ~$100,000+ (Dedicated).
- **Maturity Stages of a GTM motion** (Table 10.3):
  - **Scalability** — growth via volume/throughput; <$10M ARR/GTM; KPIs: growth rate, ARR
  - **Sustainability** — cost efficiency; <$30M ARR/GTM; KPIs: CAC Payback, NRR, FCF
  - **Durability** — quality; >$30M ARR/GTM; KPIs: DAU, GRR
- **Product-Led Growth (PLG)** is not a marketing campaign or sales methodology — it's a full GTM strategy. Atlassian is the canonical case. "Developer-led growth" is the sub-variant in developer platforms.
- **Product-Led Sales (PLS)** — sales motion tightly aligned with PLG. Sales teams use product-usage signals to identify expansion opportunities in larger accounts.
- **Channels** (Figure 10.9):
  - **Affiliates** promote — commission-based
  - **Resellers** sell — 10% (referral) to 50%+ (VAR with volume commit)
  - **Strategic Partners** enhance — complementary offering
  - **System Integrators** integrate — specialist, compliance-heavy industries
- **Running multiple GTM motions without an [[Operating Model]]** creates [[Interoperability]] failures. Not uncommon for a $250M ARR company to have 20+ uncoordinated motions.
- **Six use cases (§10.2):**
  1. Multiple GTM motions — keep ≤3 until $50M ARR
  2. "Everything, Everywhere, All at Once" — silos spiking costs
  3. Trendline validates sticking with one motion (rejecting investor pressure to add motions)
  4. When NRR reveals that the chosen motion is wrong (SDR/AE on what should be field sales because NRR makes 3-year ACV enterprise-sized)
  5. PLG + Enterprise via developer-led growth (Atlassian)
  6. GTM model evolution with market trends
- **10 GTM motion trends** (§10.2.6, summarised):
  1. SEO landscape evolving (organic traffic dropping, AI-driven content)
  2. Inbound can't sustain growth alone (saturation + generative AI)
  3. Conversational Marketing AI (chatbots maturing)
  4. PLG evolution
  5. Outbound saturation
  6. Vertical specialisation of inside sales
  7. Product-Led Sales (PLS)
  8. In-person selling expanding (even at $30K ACV)
  9. Regional teams resurging
  10. Hyper-specialist era (SMEs from R&D in sales + marketing + CS)

## Frameworks introduced / promoted

- [[GTM Model]] *(promoted from stub)*
- [[5 Touch GTM Motions]] — the central framework (No / Low / Medium / High / Dedicated Touch)
- [[Channels]] — Affiliates / Resellers / Strategic Partners / System Integrators

## Concepts introduced / promoted

- [[Product-Led Growth]] *(promoted from stub)*
- [[Product-Led Sales]]
- [[Touch Concept]]
- [[GTM Maturity Stages]] — Scalability → Sustainability → Durability
- [[Durability]] — Breakpoint 11 (expanded)
- [[Interoperability]] — Breakpoint 10 (expanded)
- [[Market Segments]]
- [[Sales Motions]]
- [[Marketing Motions]]
- [[Customer Success Motions]]

## Metric stubs

- [[CAC Payback]] *(stub; KPI in Sustainability phase)*
- [[DAU]] *(stub; KPI in Durability phase)*
- [[FCF]] *(stub; KPI in Sustainability phase)*

## Section map

- **10.1** — How the GTM Model works (X-Y framework, market segments, sales/marketing/CS motions, touch concept, maturity stages, PLG, channels)
- **10.2** — Putting the GTM Model to work (6 use cases, 10 GTM trends)
- **10.3–10.5** — Scalability / Sustainability / Durability of a GTM motion
- **10.6** — Exercises
- **10.7** — Recap

## My notes

*Reserved for user.*
