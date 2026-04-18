---
name: backend-engineering
description: Master routing skill for the Backend Dev agent. Contains 8 category folders of sub-skills. Used to determine which framework patterns, database patterns, security references, and performance guides to read for a given ticket — based on detected stack and task type.
user-invocable: false
---

# Backend Engineering — Skill Router

Read this once at the start of every ticket. Based on your detected stack and the task types in the ticket, identify which sub-skill folders to read. Read only what applies — do not load the full tree.

All sub-skills live under subdirectories of this skill. Read them using the Read tool at the relative path shown.

---

## Step 1: Detect Stack → Load Framework Skills

Match against the agent's detection order. For each detected stack, read the listed skills.

| Detected Stack | Detection Signal | Patterns | Testing | Security |
|---|---|---|---|---|
| Go | `go.mod` | `backend-frameworks/golang-patterns/SKILL.md` | `backend-frameworks/golang-testing/SKILL.md` | — |
| Python (generic) | `requirements.txt` or `pyproject.toml` | — | `backend-frameworks/python-testing/SKILL.md` | — |
| Python + Django | `django` in `requirements.txt` or `pyproject.toml` | `backend-frameworks/django-patterns/SKILL.md` | `backend-frameworks/python-testing/SKILL.md` | `backend-frameworks/django-security/SKILL.md` |
| Java + Spring Boot | `spring-boot` in `pom.xml` | `backend-frameworks/springboot-patterns/SKILL.md` | `backend-frameworks/springboot-tdd/SKILL.md` | `backend-frameworks/springboot-security/SKILL.md` |
| Java (non-Spring) | `pom.xml` without `spring-boot` | *(no pattern skill — use convention detection)* | *(detect from existing test files)* | — |
| Kotlin + Ktor | `ktor` in `build.gradle.kts` | `backend-frameworks/kotlin-ktor-patterns/SKILL.md` + `backend-frameworks/kotlin-patterns/SKILL.md` | `backend-frameworks/kotlin-testing/SKILL.md` | — |
| Kotlin + Spring | `spring` in `build.gradle.kts` | `backend-frameworks/kotlin-patterns/SKILL.md` + `backend-frameworks/springboot-patterns/SKILL.md` | `backend-frameworks/kotlin-testing/SKILL.md` | `backend-frameworks/springboot-security/SKILL.md` |
| Rust | `Cargo.toml` | `backend-frameworks/rust-patterns/SKILL.md` | `backend-frameworks/rust-testing/SKILL.md` | — |
| .NET / C# | `*.csproj` | `backend-frameworks/dotnet-patterns/SKILL.md` | `backend-frameworks/csharp-testing/SKILL.md` | — |
| NestJS | `@nestjs/core` in `package.json` | `api-design-and-development/nestjs-patterns/SKILL.md` | *(detect from existing test files)* | — |
| Node.js / Express / Fastify / Hapi | `express`, `fastify`, or `hapi` in `package.json` | `api-design-and-development/backend-patterns/SKILL.md` | *(detect from existing test files)* | — |
| Next.js API routes | `next` in `package.json`, no `@nestjs` | `api-design-and-development/backend-patterns/SKILL.md` | *(detect from existing test files)* | — |
| Laravel | `laravel/framework` in `composer.json` | `backend-frameworks/laravel-patterns/SKILL.md` | `backend-frameworks/laravel-tdd/SKILL.md` | `backend-frameworks/laravel-security/SKILL.md` |
| Elixir | `mix.exs` | *(no pattern skill — use convention detection)* | *(detect from existing test files)* | — |

**ORM supplement** — read in addition to the framework skill if the stack uses JPA:

| ORM / DB Layer | Condition | Skill |
|---|---|---|
| JPA / Hibernate | Java + Spring Boot or Kotlin + Spring | `databases/jpa-patterns/SKILL.md` |
| Exposed ORM | Kotlin + Ktor with Exposed dependency | `databases/kotlin-exposed-patterns/SKILL.md` |

If no skill exists for the detected stack: use convention detection from the codebase. Do not block.

---

## Step 2: Task Type → Load Cross-Cutting Skills

Read these based on what the ticket requires — independent of stack.

| Task Type | Trigger | Skill Path |
|---|---|---|
| Schema change | Ticket has data model changes | `databases/database-migrations/SKILL.md` |
| New schema design | Greenfield data model, new entities from scratch | `databases/database-schema-designer/SKILL.md` |
| PostgreSQL | Project uses Postgres | `databases/postgres-patterns/SKILL.md` |
| SQL / ORM queries | Complex queries, ORM optimisation | `databases/sql-database-assistant/SKILL.md` |
| Auth / access control FR | FR-XX involves authn/authz | `security/security-review/SKILL.md` |
| Security NFR | NFR-XX mentions OWASP, injection, secrets | `security/security-review/SKILL.md` |
| Secrets / credentials | Ticket involves API keys, env config, vault | `security/env-secrets-manager/SKILL.md` |
| REST API endpoints | New or modified endpoints | `api-design-and-development/api-design/SKILL.md` |
| Service / business logic layer | New services, use-cases, domain logic | `api-design-and-development/backend-patterns/SKILL.md` |
| External API integration | Ticket connects to a third-party API | `api-design-and-development/api-connector-builder/SKILL.md` |
| Performance NFR | NFR-XX has response time or throughput constraint | `performance-and-observability/performance-profiler/SKILL.md` |
| Debugging / root cause | Unexpected behavior, test failing with no clear cause | `performance-and-observability/systematic-debugging/SKILL.md` |
| Build error after implementation | Compilation or build failure | See build resolver table below |

**Build resolvers** — read the agent file if the build fails post-implementation:

| Stack | Agent File |
|---|---|
| Go | `backend-frameworks/_agent--go-build-resolver.md` |
| Java | `backend-frameworks/_agent--java-build-resolver.md` |
| Kotlin | `backend-frameworks/_agent--kotlin-build-resolver.md` |

No build resolver exists for Rust, .NET, Python, Node.js, Elixir, or Laravel. Use compiler output and convention detection directly.

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
| One framework patterns skill (or convention detection) | `database-migrations` — if schema changes |
| One testing skill (or detect from codebase) | `database-schema-designer` — if new entities from scratch |
| | `security-review` — if auth/security FR or NFR |
| | `api-design` — if new or modified endpoints |
| | `postgres-patterns` — if project uses PostgreSQL |
