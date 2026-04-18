# [Feature Name] — Feature Requirements Document

**Parent PRD:** [link to PRD]
**User Story:** US-XX — As a [user], I want [action], so that [benefit].
**Status:** Draft | In Review | Approved
**Author:** Feature Manager
**Reviewed by:** [PM name]
**Created:** [date]
**Last updated:** [date]

---

## Section 1: Codebase Feasibility

**Reuse:**
- [existing module/pattern this story builds on]
- [existing module/pattern this story builds on]
- [existing module/pattern this story builds on]

**New work:**
- [net new entity/endpoint/service needed]
- [net new entity/endpoint/service needed]
- [net new entity/endpoint/service needed]

**Conflicts / risks:**
- [architectural concern or constraint]
- [architectural concern or constraint]
- [architectural concern or constraint]

---

## Section 2: Behavioral Spec

### Functional Requirements

| ID | Requirement | Priority | Traces to |
|----|-------------|----------|-----------|
| FR-01 | The system shall [behavior]. | Must | US-XX |
| FR-02 | The system shall [behavior]. | Must | US-XX |
| FR-03 | The system shall [behavior]. | Should | US-XX |

### Non-Functional Requirements

| ID | Requirement | Category | Traces to |
|----|-------------|----------|-----------|
| NFR-01 | [constraint] | performance | US-XX |
| NFR-02 | [constraint] | security | US-XX |
| NFR-03 | [constraint] | accessibility | US-XX |

### Edge Cases

| ID | Condition | Behavior | Traces to |
|----|-----------|----------|-----------|
| EC-01 | When [edge condition] | The system shall [behavior] | FR-01 |
| EC-02 | When [edge condition] | The system shall [behavior] | FR-02 |

---

## Section 3: Light Design Doc

> Complete only after behavioral spec is approved by PM Agent.

### API Endpoints

| Method | Path | Purpose |
|--------|------|---------|
| GET | /[resource] | [one-line purpose] |
| POST | /[resource] | [one-line purpose] |

### Request / Response Shapes

```
POST /[resource]
Request:
  field_name: type
  field_name: type

Response:
  field_name: type
  field_name: type
```

### Data Model Changes

| Table | Field | Type | Change |
|-------|-------|------|--------|
| [table] | [field] | [type] | Add / Modify / Remove |

### Integration Points

- [external service or shared module this story touches]
- [external service or shared module this story touches]

---

## Section 4: Decisions Log

| Decision | Choice | Alternatives Considered | Rationale |
|----------|--------|------------------------|-----------|
| | | | |

---

## Approval

- [ ] Feature Manager completed FRD
- [ ] PM reviewed — intent matches US-XX
- [ ] PM approved
