# Ticket Templates — US-XX

Reference structure for all ticket types. Adapt body formatting to the platform (GitHub Issues markdown, Linear markdown, Jira wiki markup).

---

## Parent Issue

**Title:** `[US-XX] <verb phrase from user story>`

**Body:**

```
| Field | Value |
|-------|-------|
| **Epic** | [parent epic name or link] |
| **Story Points** | [estimate — Fibonacci: 1/2/3/5/8] |
| **Priority** | Must Have / Should Have / Nice to Have |
| **Sprint** | [sprint number or TBD] |

## User Story

As a [user], I want [action], so that [benefit].

## Why It Matters

[One sentence — the business reason. What breaks or is lost without this?]

## Acceptance Criteria

- [ ] FR-01: [Must-have FR text, plain language]
- [ ] FR-02: [Must-have FR text, plain language]
- [ ] FR-03: [Must-have FR text, plain language]

## Notes

- **Technical:** [API details, design refs, architectural constraints]
- **Dependencies:** [other stories, external systems, blocked by]
- **Out of scope:** [what this story explicitly does not cover]

## Definition of Done

- [ ] Acceptance criteria met
- [ ] Code reviewed and approved
- [ ] Tests written and passing
- [ ] Documentation updated
- [ ] Product Owner accepted

## Sub-issues

- [ ] #[BE-ticket] Backend
- [ ] #[FE-ticket] Frontend

## Reference

FRD: [path to docs/frd/US-XX-feature-name.md]
```

---

## Backend Sub-Issue

**Title:** `[US-XX-BE] <what changes on the backend>`

**Body:**

```
## Scope

Implement the backend changes for US-XX.

**FR-XX items (API / service / data layer):**
- FR-01: [what the system shall do — backend scope]
- FR-02: [what the system shall do — backend scope]

**Edge cases to handle:**
- EC-01 (FR-01): [trigger condition] → [required behavior]
- EC-02 (FR-02): [trigger condition] → [required behavior]

## Design Reference

**API endpoints:**
| Method | Path | Purpose |
|--------|------|---------|
| [METHOD] | [/path] | [purpose] |

**Data model changes:**
| Table | Field | Type | Change |
|-------|-------|------|--------|
| [table] | [field] | [type] | [Add/Modify/Remove] |

## Blocking

Blocks: #[FE-ticket]
Part of: #[parent-ticket]

## Reference

FRD: [path to docs/frd/US-XX-feature-name.md]
```

---

## Frontend Sub-Issue

**Title:** `[US-XX-FE] <what changes on the frontend>`

**Body:**

```
## Scope

Implement the frontend changes for US-XX.

**FR-XX items (UI / state / API client):**
- FR-03: [what the system shall do — frontend scope]
- FR-04: [what the system shall do — frontend scope]

**Edge cases to handle:**
- EC-03 (FR-03): [trigger condition] → [required behavior]
- EC-04 (FR-04): [trigger condition] → [required behavior]

## Design Reference

**API endpoints to integrate:**
| Method | Path | Purpose |
|--------|------|---------|
| [METHOD] | [/path] | [purpose] |

## Blocked By

Blocked by: #[BE-ticket]
Part of: #[parent-ticket]

## Reference

FRD: [path to docs/frd/US-XX-feature-name.md]
```

---

## Implementation Ticket (Backend-only / Frontend-only / CLI / Library)

**Title:** `[US-XX] <what changes>`

**Body:**

```
## User Story

As a [user], I want [action], so that [benefit].

## Scope

**FR-XX items:**
- FR-01: [what the system shall do]
- FR-02: [what the system shall do]

**Edge cases to handle:**
- EC-01 (FR-01): [trigger condition] → [required behavior]
- EC-02 (FR-02): [trigger condition] → [required behavior]

## Design Reference

[API endpoints / data model changes / integration points from FRD — as applicable]

## Acceptance Criteria

- [ ] FR-01: [Must-have FR text, plain language]
- [ ] FR-02: [Must-have FR text, plain language]

## Reference

FRD: [path to docs/frd/US-XX-feature-name.md]
```
