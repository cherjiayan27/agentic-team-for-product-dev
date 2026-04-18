# Story Splitting Techniques

Use when a user story is too large to ticket as-is (>8 points, spans multiple sprints, or produces too many FRs to fit one parent + sub-issues cleanly).

**Read the pattern, not the example.** Examples below are generic — apply the technique to your actual story.

## Contents

- [When to Split](#when-to-split)
- [Splitting Techniques](#splitting-techniques)
- [How to Hand Back](#how-to-hand-back)

---

## When to Split

Split a story if any of these are true:
- More than 8 story points
- More than ~6 Must-have FRs in the FRD
- Backend and frontend work are each large enough to be independent sprints
- The story mixes two distinct user goals

Do not split just because the story is complex. Split when the pieces deliver independent value.

---

## Splitting Techniques

| Technique | When to use | Example |
|-----------|-------------|---------|
| **By workflow step** | Story covers a multi-step process | "Checkout flow" → "Add items to cart" + "Apply discount" + "Submit order" |
| **By persona** | Different users need different views | "User dashboard" → "Admin dashboard" + "Member dashboard" |
| **By data type** | Story handles multiple input formats | "Import data" → "Import CSV" + "Import Excel" |
| **By operation** | Story covers full CRUD | "Manage users" → "Add user" + "Edit user" + "Delete user" |
| **By platform** | Story spans multiple surfaces | "Mobile support" → "iOS" + "Android" |
| **Happy path first** | Full feature is too large for one sprint | "Full search" → "Basic keyword search" + "Filters" + "Edge cases" |

---

## How to Hand Back

Do not split silently. When you identify a story that needs splitting:

1. Stop before creating tickets
2. Tell the user: which technique applies, and what the proposed sub-stories are
3. Wait for confirmation before proceeding

The split changes the PRD (new US-XX entries). That is PM Agent's job — flag it, don't do it yourself.
