---
name: pm-domain-knowledge
description: Deep product management domain knowledge — behavioral science, revenue models, product benchmarks, growth economics. Applied contextually across all steps of the PRD workflow (pain, root cause, end goal, methods) whenever the conversation matches. NOT step-specific — any reference can be relevant at any step.
user-invocable: false
---

# PM Domain Knowledge

Foundational truths and mental models for product management. These are NOT frameworks to apply mechanically — they are lenses to pull in when the conversation context matches.

**Rule:** Read the relevant reference doc when the conversation touches on its topic. Apply the insight. Do NOT dump the entire reference — use the specific part that's relevant to what's being discussed right now.

## Reference Lookup

| When the conversation involves... | Read this | Key insight |
|---|---|---|
| Why users do or don't take action, adoption, activation, retention behavior, UX friction, "users aren't using this" | [b-map.md](references/b-map.md) | Behavior = Motivation × Ability × Prompt. All three must converge. Make the action easy rather than relying on motivation. |
| Challenging assumptions, "is this constraint real or inherited?", first principles thinking, 5-step engineering process, stress-testing an idea, "should this exist?", questioning requirements, deconstructing a problem | [first-principles.md](references/first-principles.md) | Strip away convention, find bedrock truths, rebuild from there. Question the requirement → delete → simplify → accelerate → automate (in that order). The most common error is optimizing something that should not exist. |

## How to Use These References

1. The PM agent's base workflow (Steps 1-4) drives the conversation
2. At ANY step, if the conversation touches a topic in the lookup table above, read the matching reference
3. Apply the relevant insight to the current discussion — don't wait for a "correct" step
4. Use the specific part that's relevant, not the whole doc

**Examples of cross-step application:**

- Step 1 (Pain): "Users aren't completing onboarding" → read b-map.md → "Is this a motivation, ability, or prompt problem?"
- Step 2 (Root Cause): "The workaround is too complex" → read b-map.md → map against 5 ability factors
- Step 3 (End Goal): "We want 80% activation rate" → read b-map.md → "Activation measures whether M+A+P aligned at first use"
- Step 4 (Methods): "Should we add push notifications?" → read b-map.md → "A prompt when ability is low is just noise"

## Adding New References

As new domain knowledge is added, follow this pattern:
1. Create a reference doc in `references/` with the key insights (not the whole book/paper)
2. Add a row to the lookup table above with rich keyword triggers
3. The reference should include a "How to Apply" section showing how it's relevant across Steps 1-4
