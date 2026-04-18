---
name: playwright
description: Playwright E2E testing reference for the QA Agent. Covers golden rules, locator priority, web-first assertions, fixtures, flaky-test diagnosis, template catalog by feature type, and migration mappings from Cypress and Selenium. Used when writing, reviewing, or fixing Playwright tests.
user-invocable: false
---

# Playwright — QA Agent Reference

Reference material for Playwright E2E test generation, review, and repair. Read sections on demand — do not preload everything.

---

## Golden Rules (non-negotiable)

1. `getByRole()` over CSS/XPath — resilient to markup changes, mirrors how users see the page
2. Never `page.waitForTimeout()` — use `expect(locator).toBeVisible()` or `page.waitForURL()`
3. Web-first assertions — `expect(locator)` auto-retries; `expect(await locator.textContent())` does not
4. Isolate every test — no shared state, no execution-order dependencies
5. `baseURL` in config — zero hardcoded URLs in tests
6. Retries: `2` in CI, `0` locally — surface flakiness where it matters
7. Traces: `'on-first-retry'` — rich debugging without CI slowdown
8. Fixtures over globals — share state via `test.extend()`, not module-level variables
9. One behavior per test — multiple related `expect()` calls are fine
10. Mock external services only — never mock your own app

Full rationale: `references/golden-rules.md`.

---

## Locator Priority

Always use the first option that works:

```typescript
page.getByRole('button', { name: 'Submit' })        // 1. Role (default)
page.getByLabel('Email address')                     // 2. Label (form fields)
page.getByText('Welcome back')                       // 3. Text (non-interactive)
page.getByPlaceholder('Search...')                   // 4. Placeholder
page.getByAltText('Company logo')                    // 5. Alt text (images)
page.getByTitle('Close dialog')                      // 6. Title attribute
page.getByTestId('checkout-summary')                 // 7. Test ID (last semantic)
page.locator('.legacy-widget')                       // 8. CSS (last resort)
```

Full cheat sheet: `references/locators.md`.

---

## File Conventions

- Test files: `*.spec.ts` or `*.spec.js`
- Page objects: `*.page.ts` in a `pages/` directory
- Fixtures: `fixtures.ts` or `fixtures/` directory
- Test data: `test-data/` directory with JSON/factory files
- Place tests in the configured `testDir` (default: `tests/` or `e2e/`)

---

## References (load on demand)

### Core references

| File | Use when |
|---|---|
| `references/golden-rules.md` | Need the full rationale behind the 10 golden rules |
| `references/locators.md` | Picking a locator for an element |
| `references/assertions.md` | Writing web-first assertions |
| `references/fixtures.md` | Setting up `test.extend()` fixtures or `storageState` |
| `references/common-pitfalls.md` | Debugging a failing test — scan the top-10 mistakes first |
| `references/flaky-tests.md` | Intermittent failures — diagnosis commands and quick fixes |

### Task-specific references (flattened from plugin sub-skills)

| File | Use when |
|---|---|
| `references/init.md` | Bootstrapping Playwright in a new repo (config, CI, first smoke test) |
| `references/generate.md` | Generating a test file from a user story or component |
| `references/generate-patterns.md` | Looking up generation patterns for common feature types |
| `references/review.md` | Reviewing a generated test for anti-patterns and coverage gaps |
| `references/review-anti-patterns.md` | Specific anti-patterns checklist during review |
| `references/fix.md` | Diagnosing and fixing a failing or flaky test |
| `references/fix-flaky-taxonomy.md` | Categorizing flakiness (timing / isolation / environment / infra) |
| `references/coverage.md` | Auditing coverage vs. spec before shipping |
| `references/report.md` | Producing a structured test report |
| `references/migrate.md` | Migrating a suite from Cypress or Selenium |
| `references/migrate-cypress-mapping.md` | Cypress → Playwright API mapping table |
| `references/migrate-selenium-mapping.md` | Selenium → Playwright API mapping table |
| `references/testrail.md` | Pushing results to TestRail |
| `references/browserstack.md` | Running on BrowserStack |

---

## Templates

Ready-to-adapt Playwright test skeletons organized by feature type. Open the README for the full index, then navigate into the subdirectory that matches the feature under test.

| Subdirectory | Covers |
|---|---|
| `templates/auth/` | Login, logout, SSO, MFA, password reset, session timeout, remember me, RBAC |
| `templates/crud/` | Create, read, update, delete, bulk ops, soft delete |
| `templates/forms/` | Single-step, multi-step, validation, conditional fields, file upload, autosave |
| `templates/search/` | Basic search, filters, pagination, sorting, empty state |
| `templates/checkout/` | Add to cart, update quantity, apply coupon, payment, order confirm, order history |
| `templates/dashboard/` | Data loading, chart rendering, date-range filter, export, realtime updates |
| `templates/settings/` | Password change, notification prefs, profile update, account delete |
| `templates/onboarding/` | Registration, email verification, welcome tour, first-time setup |
| `templates/notifications/` | In-app, toast messages, notification center |
| `templates/accessibility/` | Color contrast, keyboard navigation, screen reader |
| `templates/api/` | REST CRUD, GraphQL, auth headers, rate limiting, error responses |

Full template index: `templates/README.md`.

---

## Integration Env Vars (optional)

Set only if the project actually uses the integration. Absence does not block test generation.

- **TestRail:** `TESTRAIL_URL`, `TESTRAIL_USER`, `TESTRAIL_API_KEY`
- **BrowserStack:** `BROWSERSTACK_USERNAME`, `BROWSERSTACK_ACCESS_KEY`
