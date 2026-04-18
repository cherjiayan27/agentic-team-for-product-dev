---
name: backend-engineering
description: Master routing skill for the Backend Dev agent. Routes codebase convention detection, Context7 framework queries, and task-type sub-skills. Used to determine how to source conventions and which domain skills to read for a given ticket.
user-invocable: false
---

# Backend Engineering — Skill Router

Read this once at the start of every ticket. Framework conventions are sourced on demand, not from bundled skills. Domain skills (databases, security, performance, etc.) are still loaded from local files.

---

## Step 1: Framework Conventions — 3-Tier Source Order

For any framework-specific question (HTTP handler patterns, ORM idioms, test framework quirks, security middleware, etc.), resolve in this order:

### Tier 1 — Codebase detection (primary, always works)

Read existing files in the project before writing a single line. For each change type:

| What to read | What to learn |
|---|---|
| An existing service or use-case file | File structure, method signatures, error handling patterns |
| An existing handler or controller | Routing pattern, request/response shapes, middleware usage |
| An existing model or schema | ORM pattern, field naming, table naming conventions |
| An existing migration | Migration file format, naming convention |
| An existing unit test file | Test runner, file naming, test naming, assertion style, mock strategy |

Adopt every convention you find. Do not impose preferences.

### Tier 2 — Context7 query (secondary)

If the codebase has no existing example for the needed pattern (greenfield feature, new integration, or a framework-specific question the existing code doesn't illuminate), query Context7 for current framework docs.

**URL convention:** `https://context7.com/websites/<slug>`

Use the `WebFetch` tool with a precise prompt. Ask for the specific pattern or API, not for "general best practices."

**Worked examples:**

```
# Django — ORM + views
WebFetch(
  url:    "https://context7.com/websites/docs_djangoproject_com_en",
  prompt: "What is the canonical pattern for writing a class-based DetailView with a custom queryset filter? Include imports."
)

# Spring Boot — REST + JPA
WebFetch(
  url:    "https://context7.com/websites/docs_spring_io_spring_boot_en",
  prompt: "Show the idiomatic way to write a @RestController endpoint that accepts JSON, validates with @Valid, and returns a ResponseEntity with error handling."
)

# Laravel — service + eloquent
WebFetch(
  url:    "https://context7.com/websites/laravel_com_docs_en",
  prompt: "Current convention for a service class that wraps an Eloquent model with transactional create + update. Include how validation is wired."
)
```

**URL patterns per stack (construct deterministically):**

| Stack | Context7 slug |
|---|---|
| Go | `go_dev_en` |
| Python | `docs_python_org_en` |
| Django | `docs_djangoproject_com_en` |
| FastAPI | `fastapi_tiangolo_com_en` |
| Flask | `flask_palletsprojects_com_en` |
| Spring Boot | `docs_spring_io_spring_boot_en` |
| Kotlin / Ktor | `ktor_io_docs_en` |
| Rust | `doc_rust_lang_org_en` |
| .NET / C# | `learn_microsoft_com_en_us_dotnet_en` |
| Laravel | `laravel_com_docs_en` |
| Node / Express | `expressjs_com_en` |
| NestJS | `docs_nestjs_com_en` |
| Elixir / Phoenix | `hexdocs_pm_phoenix_en` |

If unsure of the exact slug, WebFetch the parent `https://context7.com/` and ask for the library listing.

### Tier 3 — Idiomatic default + PR flag

If Context7 has no coverage (niche library, bleeding-edge release, or fetch fails), use the stack's idiomatic defaults and note in a PR comment: `Convention sourced from idiomatic defaults; no local examples, no Context7 coverage — please review.`

---

## Step 2: Task Type → Load Domain Sub-Skills

Domain knowledge is still bundled locally because Context7 doesn't cover project-specific concerns (architecture patterns, multi-tenant migrations, secrets management, etc.). Read these based on what the ticket requires — independent of stack.

| Task Type | Trigger | Skill Path |
|---|---|---|
| Schema change | Ticket has data model changes | `databases/database-migrations/SKILL.md` |
| New schema design | Greenfield data model, new entities from scratch | `databases/database-schema-designer/SKILL.md` |
| PostgreSQL | Project uses Postgres | `databases/postgres-patterns/SKILL.md` |
| SQL / ORM queries | Complex queries, ORM optimization | `databases/sql-database-assistant/SKILL.md` |
| Auth / access control FR | FR-XX involves authn/authz | `security/security-review/SKILL.md` |
| Security NFR | NFR-XX mentions OWASP, injection, secrets | `security/security-review/SKILL.md` |
| Secrets / credentials | Ticket involves API keys, env config, vault | `security/env-secrets-manager/SKILL.md` |
| REST API endpoints | New or modified endpoints | `api-design-and-development/api-design/SKILL.md` |
| Service / business logic layer | New services, use-cases, domain logic | `api-design-and-development/backend-patterns/SKILL.md` |
| External API integration | Ticket connects to a third-party API | `api-design-and-development/api-connector-builder/SKILL.md` |
| Performance NFR | NFR-XX has response time or throughput constraint | `performance-and-observability/performance-profiler/SKILL.md` |
| Debugging / root cause | Unexpected behavior, test failing with no clear cause | `performance-and-observability/systematic-debugging/SKILL.md` |

Build errors after implementation: do NOT resolve framework-specific compiler output inline. Query Context7 for the stack's current diagnostic guidance, or surface the failing error back to the dev path.

---

## Step 3: What NOT to Load

Skip these unless the ticket explicitly requires them:

| Category / Skill | Skip because |
|---|---|
| `cloud-architecture/` | Infrastructure concern — not a ticket implementation task |
| `data-and-ml-infrastructure/` | Load only if ticket explicitly touches ETL, ML pipelines, or RAG |
| `security/red-team`, `security/incident-response`, `security/security-pen-testing` | Operational security — out of scope for implementation tickets |
| `tech-debt-and-code-health/` | Load only if ticket explicitly asks for refactoring or debt remediation |
| `performance-and-observability/observability-designer` | Load only if NFR-XX requires instrumentation (logging, tracing) |
| `api-design-and-development/mcp-server-patterns`, `api-design-and-development/mcp-server-builder` | Load only if ticket is explicitly building an MCP server |
| `databases/clickhouse-io`, `databases/snowflake-development` | Load only if project explicitly uses ClickHouse or Snowflake |

---

## Minimum Per Ticket

| Always | Conditional |
|---|---|
| Framework convention source: codebase > Context7 > idiomatic default | `database-migrations` — if schema changes |
| Stack + task detection from Step 1's tier order | `database-schema-designer` — if new entities from scratch |
| | `security-review` — if auth/security FR or NFR |
| | `api-design` — if new or modified endpoints |
| | `postgres-patterns` — if project uses PostgreSQL |
