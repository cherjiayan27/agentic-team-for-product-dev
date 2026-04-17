---
name: update-prd
description: Save or update the PRD document. Use when you want to persist PRD changes to disk. Invoke manually with /update-prd.
disable-model-invocation: true
---

# Update PRD

Save the current PRD content to disk.

## Steps

1. **Find the PRD file** — check for `docs/prd.md` or `docs/prd/*.md` in the project. If none exists, create `docs/prd.md`.

2. **Compare** — read the existing PRD file and compare with the PRD content from this session. Identify what changed.

3. **Update** — write the updated PRD to the file. Use the template at `templates/prd-template.md` for structure.

4. **Version bump** — increment the version number in the PRD header and add an entry to the Update History table at the bottom:

   ```
   | Version | Date | What Changed |
   |---------|------|--------------|
   | 1.1 | [today] | [brief description of what changed] |
   ```

5. **Update daily memory** — append a one-line entry to today's memory file noting what changed:

   ```
   [ProductName] PRD updated v1.0→v1.1 — added US-04, reprioritized Phase 2
   ```

6. **Confirm** — report what was saved, what version, and what changed.
