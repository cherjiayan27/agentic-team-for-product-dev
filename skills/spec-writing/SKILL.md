---
name: spec-writing
description: Spec writing references for the Feature Manager agent. Contains an FRD quality bar with worked examples (FR/NFR/EC) and REST API design rules for light design docs. Used when writing behavioral specs or designing API endpoints.
user-invocable: false
---

# Spec Writing References

Reference material for writing production-quality feature specs. Not applied by default — read the relevant reference before the corresponding step.

## When to Read Each Reference

| Step | Reference | When |
|------|-----------|------|
| Step 2: Behavioral Spec | `references/frd-example.md` | Before writing any FR, NFR, or EC |
| Step 3: Light Design Doc | `references/rest-api-design.md` | Before designing any API endpoint |

## FR / EC Quality Rules

These apply to every spec you write. No exceptions.

1. **Ambiguous FR = untestable FR.** If QA cannot write a pass/fail test from the FR alone, rewrite it.
2. **Every Must-have FR needs at least one EC.** The edge case is what separates a shipped feature from a broken one.
3. **NFR thresholds must be numbers.** P50, P99, count, percentage — not adjectives like "fast" or "secure."
4. **ECs are not error messages.** They describe system behavior under a specific condition — exact trigger, exact required behavior. "Handle gracefully" is not a behavior.
5. **One behavior per FR.** If "and" appears in an FR, consider splitting it.

## Rule

Read the reference for the step you are about to do. Do not read both upfront and proceed from memory — return to the reference at the point it is needed.
