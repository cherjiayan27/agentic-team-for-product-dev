# INVEST Checklist

**When relevant:** Validating user stories before handing them to the Feature Manager. If a story fails any criterion, rewrite it before proceeding.

---

## The 6 Criteria

| Letter | Criterion | Question to ask |
|---|---|---|
| **I** | Independent | Can this be built without depending on another story? |
| **N** | Negotiable | Is the scope open to discussion, not locked in stone? |
| **V** | Valuable | Does it deliver clear, direct value to the user? |
| **E** | Estimable | Can a developer size it? If not, it's too vague. |
| **S** | Small | Does it fit in a sprint? If not, split it. |
| **T** | Testable | Can you write a test to verify it's done? |

---

## How to apply

Run each story through all 6 before handoff. A story that fails:
- **I** — has a hidden dependency; surface it and sequence the stories
- **N** — is over-specified; strip the implementation detail, keep the intent
- **V** — is a task, not a story; reframe around user benefit
- **E** — is too vague; add enough context for dev to size it
- **S** — is an epic; split into smaller stories
- **T** — has no clear acceptance signal; define what "done" looks like

---

## Related

- MoSCoW — prioritization of stories once validated
- Given-When-Then — acceptance criteria format used by the Feature Manager per FR
