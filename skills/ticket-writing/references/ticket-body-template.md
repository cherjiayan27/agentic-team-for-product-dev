# Ticket Body Template

The Story Info table goes at the top of every parent issue. Fill all fields — leave value blank if unknown, never omit a row.

## Story Info Table

```
| Field | Value |
|-------|-------|
| **Epic** | [parent epic name or link] |
| **Story Points** | [estimate — Fibonacci: 1/2/3/5/8] |
| **Priority** | Must Have / Should Have / Nice to Have |
| **Sprint** | [sprint number or TBD] |
```

## Field Guidance

| Field | Rule |
|-------|------|
| Epic | Name of the parent feature group. If no epics tracked, omit this row. |
| Story Points | Use Fibonacci scale. If not estimated yet, write `TBD`. |
| Priority | MoSCoW — matches the FRD's US-XX priority. Must Have = blocks release. |
| Sprint | Planned sprint number. `TBD` if unscheduled. |

## Notes

- Assignee is omitted from this template — it is set in the platform (GitHub/Linear/Jira), not in the ticket body.
- Story Info goes above the User Story section — it is metadata, not content.
- Sub-issues row is added by the Ticket Writer after BE and FE tickets are created.
