# RICE Framework

**When relevant:** Multiple competing features need prioritization. Quarterly roadmap planning. Communicating priorities to stakeholders.

---

## Formula

```
RICE Score = (Reach x Impact x Confidence) / Effort
```

## Components

| Component | Description | Values |
|-----------|-------------|--------|
| **Reach** | Users affected per quarter | Numeric count (e.g., 5000) |
| **Impact** | Effect on each user | massive=3x, high=2x, medium=1x, low=0.5x, minimal=0.25x |
| **Confidence** | Certainty in estimates | high=100%, medium=80%, low=50% |
| **Effort** | Person-months required | xl=13, l=8, m=5, s=3, xs=1 |

## Example

```
Feature: Mobile Push Notifications
Reach: 10,000 users
Impact: massive (3x)
Confidence: medium (80%)
Effort: medium (5 person-months)

RICE = (10,000 x 3 x 0.8) / 5 = 4,800
```

## Interpretation

- **1000+**: High priority — strong candidates for next quarter
- **500-999**: Medium priority — consider for roadmap
- **100-499**: Low priority — keep in backlog
- **<100**: Deprioritize — requires new data to reconsider

## Limitations

- Requires reasonable estimates (garbage in, garbage out)
- Doesn't account for dependencies
- May undervalue platform investments
- Reach estimates can be gaming-prone

---

*Source: claude-skills-main/product-team/product-manager-toolkit*
