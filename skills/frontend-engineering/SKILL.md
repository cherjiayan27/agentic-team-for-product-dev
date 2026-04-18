---
name: frontend-engineering
description: Master routing skill for the Frontend Dev agent. Maps detected stack, state management, test framework, and task type to inline conventions and reference sub-skills. Used to determine which patterns to apply for a given frontend sub-issue.
user-invocable: false
---

# Frontend Engineering — Skill Router

Read this once at the start of every frontend sub-issue. Based on your detected stack and the task types in the ticket, identify which sections apply. Read only what applies — do not load every section.

---

## Step 1: Detect Stack → Apply Framework Conventions

Match against `package.json` dependencies. Read the row for your detected stack.

| Detected Stack | Detection Signal | Key Conventions |
|---|---|---|
| React (SPA) | `react` + `vite` or `react-scripts` | Functional components only. Hooks for all state and side effects. No class components. Co-locate component + styles + tests in one folder. |
| Next.js | `next` in `package.json` | App Router (Next 13+): server components by default, `"use client"` only when interactivity required. Pages Router (Next 12-): `getServerSideProps` / `getStaticProps`. File-based routing — new routes go under `app/` or `pages/`. |
| Vue.js | `vue` (v3) | Composition API + `<script setup>`. Options API only if codebase already uses it. `defineProps` / `defineEmits` for component contracts. |
| Nuxt.js | `nuxt` | Auto-imports: no manual imports for composables or components. `useAsyncData` / `useFetch` for data fetching. File-based routing under `pages/`. |
| Svelte | `svelte` | Reactive declarations (`$:`). Stores (`writable` / `readable` / `derived`) for shared state. No virtual DOM — write plain Svelte, not React-style. |
| Angular | `@angular/core` | Modules + Injectable services. Standalone components if project already uses them (`standalone: true`). RxJS Observables for async — no raw Promises unless existing code uses them. |
| SolidJS | `solid-js` | Signals for reactive state. `createSignal`, `createMemo`, `createEffect`. No `useState` — Solid is not React. |
| Remix | `remix` | Loaders for data fetching (server-side), Actions for mutations. No client-side fetch for initial data. Nested routes. |

If no skill exists for the detected stack: read two to three existing component files and adopt their exact pattern.

---

## Step 2: Detect State Management → Apply State Conventions

| Dependency | Pattern | Key Rules |
|---|---|---|
| `zustand` | Zustand stores | One store per feature domain. Selectors inline in component (`useStore(s => s.field)`). Actions defined inside `create()`. |
| `@reduxjs/toolkit` | Redux Toolkit slices | One slice per feature. `createSlice` + `createAsyncThunk`. Selectors in `selectors.ts` alongside the slice. Never mutate state outside a reducer. |
| `jotai` | Jotai atoms | Atoms for shared state, `useAtom` in components. Derived atoms with `atom(get => ...)`. No global store object. |
| `@tanstack/react-query` | React Query (server state) | `useQuery` for reads, `useMutation` for writes. Invalidate on mutation success. Cache keys follow `[entity, id]` convention. |
| `swr` | SWR | `useSWR` with consistent key strings. Mutations via `mutate`. Deduplicate by key. |
| None | Local state | `useState` / `useReducer` / `ref` / `signal` depending on stack. Lift state only when two+ siblings need it. |

---

## Step 3: Detect Test Framework → Apply Testing Conventions

| Signal | Framework | Test Conventions |
|---|---|---|
| `@testing-library/react` + `jest` | Jest + RTL | `render()` → query by role/label → `userEvent` for interactions. No shallow rendering. Mock API calls with `msw` or `jest.mock`. |
| `vitest` + `@testing-library/react` | Vitest + RTL | Same RTL conventions. `vi.mock()` instead of `jest.mock()`. `vi.fn()` instead of `jest.fn()`. |
| `@testing-library/vue` | Vue Testing Library | `render()` + `@testing-library/user-event`. Mount options for `global.plugins` (router, pinia). |
| `@angular/core/testing` | Angular TestBed | `TestBed.configureTestingModule()`. `ComponentFixture` + `detectChanges()`. Spy on services with `jasmine.createSpyObj`. |
| `@playwright/test` (component) | Playwright CT | `mount()` from `@playwright/experimental-ct-react` or equivalent. |
| No test files found (greenfield) | Detect from package.json | Jest + RTL for React/Vue. Vitest if `vitest` present. Angular TestBed for Angular. |

**Test naming — always reference FR/EC IDs:**

```
it('FR-03: renders user profile with display name', ...)
it('EC-03: shows error boundary when API returns 500', ...)
it('EC-04: disables submit button while request is in flight', ...)
```

---

## Step 4: Task Type → Load Cross-Cutting Conventions

Apply these based on what the ticket requires — independent of stack.

| Task Type | Trigger | Convention |
|---|---|---|
| API integration | Ticket has endpoints to call | Type the request and response shapes. Centralize base URL and headers in one API client file (not per-component). Handle loading + error + empty states explicitly for every call. |
| Form handling | FR or EC involves form submission or validation | Detect form library (`react-hook-form`, `formik`, `vee-validate`, Svelte superforms). Read one existing form for conventions. If none: use controlled components + inline validation. |
| Routing / navigation | FR involves page transitions or deep links | Follow existing routing conventions exactly (file-based vs. config-based). Add routes in the same file / directory pattern already established. |
| Accessibility | NFR mentions a11y, WCAG, or screen reader | Semantic HTML first. ARIA only when semantic HTML is insufficient. `aria-label` on icon-only buttons. Focus management on modal open/close. Color contrast ≥ 4.5:1 for text. |
| Responsive design | All tickets | Mobile-first: 360px base, tablet 768px, desktop 1280px (unless project breakpoints differ — read `tailwind.config.js` or CSS variables). Start at smallest viewport. |
| Animation / motion | FR involves transitions or animation | Detect animation library (`framer-motion`, `@vueuse/motion`, CSS transitions). Match existing animation duration and easing tokens. Respect `prefers-reduced-motion`. |
| Internationalization | Project has i18n setup | Detect i18n library (`react-i18next`, `vue-i18n`, `next-intl`). Never hardcode user-visible strings — use translation keys. |
| Performance NFR | NFR-XX has render budget or load time constraint | Lazy-load routes with `React.lazy` / dynamic imports. Memoize expensive computations (`useMemo`/`createMemo`/`computed`). Avoid unnecessary re-renders (stable references, `useCallback`). |
| Error boundaries | EC involves unhandled component crashes | Wrap feature root with an error boundary. Log to existing error reporting if present. Show fallback UI — never blank white screen. |

---

## Step 5: Sub-Skills Available

Domain-knowledge skills installed under `frontend-engineering/`. Load only when ticket triggers match — never read all.

### Core (direct frontend craft)

| Skill | Load when ticket / NFR mentions |
|---|---|
| [refactoring-ui](core/refactoring-ui/SKILL.md) | Visual hierarchy, spacing scale, color palette, Tailwind tokens, design system polish, "looks off", grayscale-first audit |
| [web-typography](core/web-typography/SKILL.md) | Font pairing, type hierarchy, line-height, variable fonts, FOUT/FOIT, web-font loading perf, long-form readability |
| [top-design](core/top-design/SKILL.md) | Award-level / Awwwards-style site, scroll-driven animation, parallax, cinematic brand experience, premium portfolio |
| [microinteractions](core/microinteractions/SKILL.md) | Triggers, rules, feedback, loops, modes — interaction polish on buttons, toggles, inputs, transitions |
| [ios-hig-design](core/ios-hig-design/SKILL.md) | iOS / iPadOS native UI, SwiftUI, UIKit, Dynamic Island, safe areas, SF Symbols, haptics, HIG compliance |
| [high-perf-browser](core/high-perf-browser/SKILL.md) | Network protocols, resource loading, browser rendering pipeline, Core Web Vitals, perf NFR with load-time budget |
| [ui-ux-pro-max](core/ui-ux-pro-max/.claude/skills/ui-ux-pro-max/SKILL.md) | Generate tailored design system from project brief — 161 reasoning rules, 67 UI styles, section patterns, CTA placement, conversion archetypes. Ships CLI (`uipro-cli`). Load when brief = "design a landing page", "pick a style", "design system from scratch", multi-section marketing site |
| [frontend-design](core/frontend-design/SKILL.md) | Anthropic-official. Build distinctive, production-grade UI that avoids "AI slop" aesthetics — bold aesthetic direction, typography pairing, polished details. Load when greenfield component / page / artifact / landing needs strong POV (not template-y) |

### UX/usability

| Skill | Load when ticket / NFR mentions |
|---|---|
| [ux-heuristics](ux-usability/ux-heuristics/SKILL.md) | Usability audit, Nielsen 10 heuristics, form UX, navigation problems, IA review, "users confused" |
| [design-everyday-things](ux-usability/design-everyday-things/SKILL.md) | Affordances, signifiers, mappings, feedback, error prevention, mental models, "why is this confusing" |
| [hooked-ux](ux-usability/hooked-ux/SKILL.md) | Habit-forming loops, Hook Model (trigger / action / variable reward / investment), notification strategy, engagement loops |
| [improve-retention](ux-usability/improve-retention/SKILL.md) | B=MAP behavior design, friction reduction, onboarding progression, retention NFR |
| [lean-ux](ux-usability/lean-ux/SKILL.md) | Hypothesis-driven UX, rapid experiments, MVP UX scope, validate-before-build |

### Code quality (applies to FE codebases)

| Skill | Load when ticket / NFR mentions |
|---|---|
| [clean-code](code-quality/clean-code/SKILL.md) | Naming, small functions, error handling, readability refactor of existing component / hook |
| [refactoring-patterns](code-quality/refactoring-patterns/SKILL.md) | Named refactoring transformations (Fowler) — extract function, replace conditional, move method, etc. |
| [software-design-philosophy](code-quality/software-design-philosophy/SKILL.md) | Deep modules, information hiding, complexity management — designing component/hook APIs with narrow surface |
| [pragmatic-programmer](code-quality/pragmatic-programmer/SKILL.md) | DRY, orthogonality, tracer bullets, design-by-contract — meta-principles when ticket spans many files |
| [clean-architecture](code-quality/clean-architecture/SKILL.md) | Dependency Rule, layering — separating UI / hooks / services / data so deps point inward |

---

## Step 6: What NOT to Load

| Category | Skip because |
|---|---|
| Backend framework skills | Backend Dev's domain — do not read or apply |
| CI/CD, Docker, deployment config | Ship Agent's domain |
| Auth implementation | Backend concern — Frontend only integrates the auth state the backend returns |
| Design system creation | Load only if ticket explicitly asks to build a design system component, not just use one |
| Analytics / tracking | Load only if FR-XX explicitly requires it — do not add speculatively |
| Feature flags | Load only if ticket's FR-XX explicitly requires a flag |

---

## Minimum Per Sub-Issue

| Always | Conditional |
|---|---|
| Stack framework conventions (Step 1) | Form library conventions — if FR/EC involves form handling |
| State management conventions (Step 2) | Accessibility conventions — if NFR-XX mentions a11y |
| Test framework conventions (Step 3) | i18n conventions — if project has i18n setup |
| API integration conventions (Step 4) | Performance conventions — if NFR-XX has render/load constraint → load `high-perf-browser` |
| Responsive design check (Step 4) | Error boundary — if EC involves unhandled error states |
| — | Sub-skill from Step 5 — only if ticket trigger matches |
