---
name: ticket-writing
description: Ticket writing references for the Ticket Writer agent. Contains story quality checks, GWT acceptance criteria patterns, and story splitting techniques. Used when validating stories, writing acceptance criteria, and splitting oversized user stories.
user-invocable: false
---

# Ticket Writing References

## When to Read Each Reference

| Step | Reference | When |
|------|-----------|------|
| Step 3: Before creating any ticket | *(see Story Quality Checks below)* | Always — validate story first |
| Step 3: Format parent issue body | `references/ticket-body-template.md` | Before writing the parent issue |
| Step 3: Create Parent Issue (acceptance criteria) | `references/ac-patterns.md` | Before writing any AC checklist item |
| Step 3: Story too large (>8 points or clearly spans multiple sprints) | `references/story-quality.md` | Before splitting — read the techniques |

## Story Quality Checks

Run these before creating tickets. If any check fails, flag it to the user — do not create tickets for a story that fails validation.

### Story Antipatterns

| Antipattern | Example | Fix |
|-------------|---------|-----|
| Solution story | "Implement React component" | "Display user profile information" |
| Compound story | "Create, edit, and delete users" | Split into three stories |
| Missing persona | "The system will..." | "As an admin, I want to..." |
| No benefit | "I want to see a button" | Add "so that [benefit]" |
| Too vague | "Improve performance" | "Reduce page load to <2 seconds" |
| Technical jargon | "Implement Redis caching" | "Enable instant search results" |

### INVEST Validation

| Criterion | Pass if... | Red flag |
|-----------|------------|----------|
| **Independent** | No blocking dependency on uncommitted work | "After story X is done..." |
| **Negotiable** | Multiple ways to deliver the value | Specific implementation in story text |
| **Valuable** | Clear "so that [benefit]" | No benefit statement |
| **Estimable** | Team can size it | "No idea" — needs a spike first |
| **Small** | Completable in one sprint | >8 points |
| **Testable** | Clear, measurable AC | "System should be better" |

### Acceptance Criteria Coverage

Every parent issue AC checklist must cover these categories where applicable:

| Category | Example |
|----------|---------|
| Happy path | Given valid input, When submitted, Then success |
| Validation | Reject input when required field is empty |
| Error handling | Show user-friendly message when API fails |
| Performance | Complete operation within [N] seconds |
| Accessibility | Navigable via keyboard only |
| Security | Do not expose sensitive data in URL parameters |

## Parent Issue Body Structure

Every parent issue body must include these sections in order:

1. **Story Info** — Epic, Points, Priority, Sprint (from `references/ticket-body-template.md`)
2. **User Story** — "As a [user], I want [action], so that [benefit]."
3. **Why It Matters** — one sentence, business reason
4. **Acceptance Criteria** — Must-have FRs as GWT checklist items
5. **Notes** — three bullets: technical notes / dependencies / out of scope
6. **Definition of Done** — fixed checklist (inline below)
7. **Sub-issues** — task list added after sub-issues created
8. **Reference** — FRD path

### Notes Section

Always include three lines. Leave blank if not applicable — do not omit.

```
## Notes

- **Technical:** [API details, design refs, architectural constraints]
- **Dependencies:** [other stories, external systems, blocked by]
- **Out of scope:** [what this story explicitly does not cover]
```

### Definition of Done

Fixed. Copy verbatim into every parent issue body.

```
## Definition of Done

- [ ] Acceptance criteria met
- [ ] Code reviewed and approved
- [ ] Tests written and passing
- [ ] Documentation updated
- [ ] Product Owner accepted
```

## Rule

Read the AC patterns reference at the point you are writing acceptance criteria — not upfront. The patterns are domain examples; adapt the structure to your feature, not the domain.
