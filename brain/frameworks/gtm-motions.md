# GTM Motions

**Source:** Winning By Design *Revenue Architecture*; Kyle Poyar / OpenView PLG research; Product-Led Growth Collective.

## What

Five canonical go-to-market motions for SaaS / subscription products. Motions are how revenue is generated, not where leads come from. Most companies run a blend of 2–3, not a single pure motion.

## When to use

- Deciding how a new product will reach its market
- Diagnosing why GTM cost is rising faster than revenue
- Pricing and packaging decisions (self-serve vs. enterprise)
- Team structure and compensation design

## The five motions

### 1. Marketing-Led (content / demand gen)

**How revenue is generated.** Content, SEO, ads, events drive prospects to the site. Prospects self-educate and convert through a marketing-owned funnel (landing page → demo or signup).

**Fits:** mid-market SaaS, established categories where buyers already know the problem.
**Key metrics:** CAC, MQL → SQL conversion, cost per SQL, payback period.
**Team:** Demand gen marketers + SDRs.

### 2. Inbound-Led (product-led / PLG)

**How revenue is generated.** Free tier, free trial, or freemium. Users experience value in the product before a salesperson enters. Conversion happens inside the product (activation → qualified → paid).

**Fits:** horizontal developer tools, prosumer, individual adoption expands to team.
**Key metrics:** Free → paid conversion rate, time-to-value, PQL rate.
**Team:** Growth engineers + product marketing + expansion sales.

Classic examples: Slack, Notion, Figma, Atlassian, Dropbox, Datadog.

### 3. Outbound-Led (sales-led / SLG)

**How revenue is generated.** SDRs prospect named accounts. AE runs discovery and closes. CS handles onboarding and renewal.

**Fits:** enterprise SaaS, complex or multi-stakeholder sales, high ACV.
**Key metrics:** Pipeline coverage, SAL → closed-won conversion, ACV, sales cycle length.
**Team:** SDR + AE + CSM + SE (solutions engineer) per territory.

### 4. Partner-Led (channel / ecosystem)

**How revenue is generated.** Third parties (channel resellers, ISVs, integrators, consultancies) sell or embed the product. Revenue is shared.

**Fits:** products that benefit from implementation expertise (ERP, security, data), geographic expansion without local sales team.
**Key metrics:** Partner-sourced ARR, partner-influenced ARR, partner retention.
**Team:** Partnerships team + partner enablement + co-sell program.

### 5. Community-Led (developer / network)

**How revenue is generated.** A community of users, developers, or enthusiasts evangelizes the product. Often starts open-source or with a strong content/education layer.

**Fits:** developer tools, infrastructure, open-source commercial products.
**Key metrics:** Active contributors, commits/PRs, GitHub stars, Discord DAU, OSS-to-enterprise conversion.
**Team:** DevRel + community managers + open-source maintainers.

Classic examples: HashiCorp, Elastic, MongoDB, Postgres ecosystem companies.

## Blending motions

A single motion almost never scales past ~$30M ARR. Typical progressions:

| Year | Motion stack |
|---|---|
| 0–1 | One motion (usually Inbound-Led or Community-Led for bottom-up, Outbound-Led for enterprise-first) |
| 1–3 | Add second motion — Inbound adds Outbound for enterprise tier; Outbound adds Inbound for velocity |
| 3+ | Add partner and community layers |

The risk in blending is motion conflict — an inbound free user getting cold-called by an SDR before they hit PQL destroys the motion.

## Motion mismatch symptoms

| Symptom | Likely mismatch |
|---|---|
| High CAC + long sales cycles on a cheap, single-user product | Trying to do Outbound on a product designed for Inbound |
| High signup volume, low conversion, no sales lift | Inbound motion without a conversion trigger / expansion path |
| Partner revenue stuck at <5% of ARR for multiple years | Partnerships wasn't actually designed — just announced |
| Community growing, revenue flat | Missing OSS-to-commercial packaging |
| SDRs burning through leads, low conversion | Wrong ICP or wrong motion for the product's price point |

## Choosing a motion for a new product

Decision heuristics:

1. **Can a single user get value in < 10 minutes without help?** → Inbound-Led viable.
2. **Is the ACV > $50K?** → Outbound-Led is usually required; Inbound alone won't clear the overhead.
3. **Is there a developer / maker persona that would evangelize?** → Community-Led adds a multiplier.
4. **Is implementation complex (weeks-months)?** → Partner-Led will matter at scale.
5. **Is the category new and the buyer uneducated?** → Marketing-Led (education) before anything else.

## Application rules

- A motion is not a channel. "We run ads" is a channel inside Marketing-Led.
- Motion choice drives pricing and packaging. Self-serve pricing and enterprise contracts require different motions.
- Team comp must match the motion. SDRs paid on volume breaks an Inbound-Led motion.
- When a product outgrows its original motion, the rewrite is usually painful — expect a year of GTM re-tooling.

## When to relax

- Horizontal consumer products don't map cleanly to these motions. Use the DTC playbook (paid social + organic + retention loops) instead.
- Hardware + SaaS combos have their own motion (distribution-led) that isn't in the standard five.
