# North Star Metric

**Source:** Sean Ellis (*Hacking Growth*); Amplitude *North Star Playbook*.

## What

The single leading indicator of product value delivered to users. Pronounced enough that every team can align to it without translation. Different from revenue — revenue is the outcome; the North Star is the behavior that produces revenue.

## When to use

- Aligning a product team around one number
- Choosing between competing metrics in a goal-setting cycle
- Diagnosing which leading indicator to measure for a long-term outcome
- Killing vanity metrics (registered users, page views) as primary KPIs

## Criteria for a good North Star

A North Star must satisfy **all four**:

1. **Reflects user value.** If the metric goes up, users are getting more value.
2. **Represents the product's core value exchange.** Not a peripheral feature.
3. **Leads revenue, not lags it.** Revenue should track the North Star with a delay, not predict it.
4. **Measurable with existing instrumentation** or a small addition.

## Examples (public)

| Company | North Star | Why it works |
|---|---|---|
| Airbnb | Nights booked | Captures both sides: supply (host income) and demand (traveler trip). |
| Spotify | Time spent listening | Measures value consumed, not subscriptions. Higher → more retention + more willingness to pay. |
| Facebook (historic) | DAU | In a social network, daily use proves utility. |
| Slack | Weekly active users on a workspace with >2K messages | Combines habit (active) with team adoption (messages) — predicts paid conversion. |
| Amazon | Number of purchases per Prime member per year | Measures Prime utility, not subscription count. |
| Zoom | Weekly hosted meetings | Hosting → paid conversion; attending is free. |
| Miro | Weekly active boards | Boards with >1 user = collaboration; the product's value. |

## Anti-patterns

| Bad North Star | Problem |
|---|---|
| Total registered users | Vanity — includes dead accounts and doesn't lead revenue |
| Monthly revenue | Lagging — you can't steer with it |
| DAU without context | True for Facebook, not true for a tax app |
| Feature usage (e.g., "users who used feature X") | Local to the feature; misses the product's purpose |
| Page views | Proxy for nothing specific |

## Building a North Star

### Step 1: Name the product's core value exchange

What does the user do that, if they did more of it, would mean they value the product more?

### Step 2: Add a quality modifier

Raw counts ("messages sent") are gameable. Add a quality threshold ("messages sent in teams of 2+ within the first week"). The modifier encodes what "real" usage looks like.

### Step 3: Test the lead-lag relationship

Plot the candidate North Star against revenue over 90 days. If the two move together with North Star leading by 30–60 days, it qualifies.

### Step 4: Pair with a guardrail

A single North Star risks optimization abuse. Always pair with a guardrail metric that catches the failure mode.

| North Star | Guardrail |
|---|---|
| Time spent listening | Skip rate |
| Weekly active boards | Users per board (solo use = weak collaboration) |
| Purchases per member | Return rate |

### Step 5: Decompose into inputs

The North Star becomes actionable when it is broken into contributing inputs. Example — weekly active boards:

```
Weekly active boards
 = (# boards created)
 × (% boards with ≥ 2 collaborators)
 × (% multi-collab boards active this week)
```

Teams work on the inputs, not the North Star itself.

## Application rules

- One North Star per product. Not one per team.
- Revenue is not the North Star. It is the outcome.
- When the North Star and revenue diverge for more than one quarter, re-test the lead-lag relationship — the metric may have drifted.
- Announce the North Star publicly (internally). If people can't recite it, it isn't one.

## When to relax

- Pre-launch / early alpha: any retention signal is rarer than a valid North Star. Use aha-moment completion rate as a proxy.
- Marketplaces need dual-sided North Stars (supply liquidity + demand liquidity) or a combined metric like "transactions."
