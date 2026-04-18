# FRD Quality Bar — Worked Example

This is the standard you must match. Read it before writing any spec. Every FR, NFR, and EC you write should be this concrete, this testable, and this precise.

**Read the pattern, not the domain.** This example is from a location/maps product. Your feature may be billing, auth, notifications, or anything else. The domain does not transfer — the structural pattern does: measurable constraints, traceable IDs, specific trigger conditions, precise behaviors.

---

## What "Good" Looks Like

### User Stories (from PM Agent)

```
As a Maps user, I want to ask a natural language question about places near me,
so that I can discover options I would not find through manual filters.

As a Maps user, I want to ask follow-up questions in the same session without
re-entering my original context, so that I can refine my search conversationally.

As a Maps user, I want Ask Maps to consider my current location, time of day,
and day of week automatically, so that I get contextually relevant answers
without explicitly stating these.
```

---

### Functional Requirements — What Makes Them Good

Each FR:
- Uses "shall" (not "should", "will", "must", "can")
- Contains a specific, measurable constraint (500 chars, not "reasonable length")
- Is testable in isolation — you can write a pass/fail test for it without reading any other FR
- Does not bundle two behaviors into one sentence

| ID | Requirement | Priority | Traces to |
|----|-------------|----------|-----------|
| FR-01 | The system shall accept natural language queries of up to 500 characters via text input. | Must | US-01 |
| FR-02 | The system shall accept voice input and convert it to text before processing. | Must | US-01 |
| FR-03 | The system shall use the user's current GPS-confirmed location as the default geographic context for all queries. | Must | US-03 |
| FR-04 | The system shall return a minimum of 3 and a maximum of 10 place results per query. | Must | US-01 |
| FR-05 | The system shall include the following for each result: place name, distance from user, rating, a one-line AI-generated reason for the recommendation, and a direct CTA to navigate. | Must | US-01 |
| FR-06 | The system shall support follow-up queries within the same session, preserving the context of the initial query. | Must | US-02 |
| FR-07 | The system shall surface a "limited results" state rather than returning results when confidence is below 0.75. | Must | US-01 |

---

### Non-Functional Requirements — What Makes Them Good

Each NFR:
- States a measurable threshold (P50 < 1s, not "fast")
- Is scoped to this user story — not a restatement of general system NFRs
- Could be verified by a test or monitoring tool

| ID | Requirement | Category | Traces to |
|----|-------------|----------|-----------|
| NFR-01 | P50 response latency shall be under 1 second. P99 shall be under 2 seconds. | performance | US-01 |
| NFR-02 | The system shall handle a minimum of 10,000 concurrent queries. | performance | US-01 |
| NFR-03 | The AI recommendation layer shall not surface results from businesses with a rating below 3.5, unless the user explicitly requests otherwise. | quality constraint | US-01 |
| NFR-04 | The system shall not store the user's query text beyond the active session without explicit consent. | security | US-01, US-02 |

---

### Edge Cases — What Makes Them Good

Each EC:
- Is a realistic scenario — something that will happen in production, not invented to fill space
- States the exact trigger condition (no GPS signal — not "network issues")
- States the exact required behavior (prompt for manual entry — not "handle gracefully")
- Traces to the FR it exercises
- Is testable: you can reproduce the condition and assert the outcome

**A weak EC looks like this:**
> EC-XX: When the network is unavailable. The system shall handle this gracefully. | FR-03

This fails. "Network unavailable" is not specific. "Handle gracefully" is not testable.

**A strong EC looks like this:**
> EC-01: When the user's device cannot confirm GPS signal. The system shall prompt the user to manually enter a location rather than defaulting to a stale cached location. | FR-03

This passes. The trigger is specific. The behavior is precise. A QA engineer can reproduce and assert it.

| ID | Condition | Behavior | Traces to |
|----|-----------|----------|-----------|
| EC-01 | When the user's device cannot confirm GPS signal | The system shall prompt the user to manually enter a location rather than defaulting to a stale cached location. | FR-03 |
| EC-02 | When a query returns no matches within a 10km radius | The system shall expand the search radius to 25km and inform the user that results are from an expanded area. | FR-04 |
| EC-03 | When the query is submitted in a language other than English | The system shall return an error message stating that only English-language queries are supported, without attempting to process or translate the input. | FR-01 |
| EC-04 | When the query is ambiguous (e.g., "good food near me" with no category, cuisine, or constraint specified) | The system shall ask exactly one clarifying question before returning results, and shall not make an assumption about the user's intent. | FR-01, FR-07 |

