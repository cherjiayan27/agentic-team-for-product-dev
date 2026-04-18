# Jobs to Be Done

**Source:** Clayton Christensen, *Competing Against Luck*; Tony Ulwick, *Jobs to Be Done: Theory to Practice*; Alan Klement, *When Coffee and Kale Compete*.

## What

A lens for understanding user motivation that focuses on the **job** the user is "hiring" a product to do, not on the user's demographics or the product's features. A job is the progress a user is trying to make in a specific circumstance.

Famous framing: *"People don't want a quarter-inch drill; they want a quarter-inch hole. But actually they want a way to hang a picture. Or really, they want a home that feels like theirs."*

## When to use

- Defining user stories that capture real motivation
- Running customer interviews that surface why people switch products
- Choosing between features that seem equally valuable
- Identifying non-obvious competitors (Christensen's milkshake example: morning commute's real competitor is bagels and bananas, not other milkshakes)

## Three ingredients

Every job has:

1. **Situation** — the circumstance that triggers the job
2. **Motivation** — the progress the user wants to make
3. **Expected outcome** — how they will know it worked

Example (Intercom's format, mashed with Christensen's):
> **When** I am commuting alone in the morning and feel bored, **I want to** have something to occupy my hands and make the drive feel shorter, **so I can** start my workday in a slightly better mood.

## Job Story format

A precise way to write jobs:

```
When [situation], I want to [motivation], so I can [expected outcome].
```

Contrast with a classic user story:

```
As a [persona], I want [feature], so that [benefit].
```

Job stories remove the persona (because the same person has different jobs in different situations) and replace the feature with the motivation (because the feature is an implementation, not a job).

Both formats are valid. Job stories are better early in discovery; user stories are better during implementation.

## The four forces of switching

When a user moves from one solution to another, four forces are at play (Alan Klement).

| Force | Direction | Example |
|---|---|---|
| **Push** of the current situation | Toward change | "My current tool is slow and I miss deadlines" |
| **Pull** of the new solution | Toward change | "This new tool promises to fix that" |
| **Anxiety** about the new solution | Away from change | "What if it loses my data?" |
| **Habit** of the current solution | Away from change | "I already know where everything is" |

Switching happens only when `(Push + Pull) > (Anxiety + Habit)`. PMs often invest only in Pull and leave adoption stuck.

## Functional, emotional, social jobs

A single "job" typically has three layers. All three matter.

| Layer | Question |
|---|---|
| **Functional** | What is the user trying to accomplish? |
| **Emotional** | How do they want to feel? |
| **Social** | How do they want to be seen? |

Example — buying a luxury car:
- Functional: get from A to B reliably
- Emotional: feel successful
- Social: be seen as successful

Products that solve only the functional layer get commoditized.

## How to find a job

The JTBD interview (Clayton's "switch interview") walks a user backwards from a purchase:

1. When did you first realize you had this problem?
2. What were you using before?
3. What happened that made you start looking?
4. What did you consider? Why did you pick this one?
5. What anxieties did you have?
6. When did you actually start using it? What was the trigger?

The user almost never says "I had job X"; the job is inferred from the story.

## Common mistakes

| Mistake | Fix |
|---|---|
| Writing a job story that names a feature | Remove the feature; ask why the user wants it |
| Starting with demographics | Start with situations. Demographics rarely predict jobs. |
| Collapsing job layers | Keep functional/emotional/social separate when deciding tradeoffs |
| One product = one job | A product does many jobs. Name them and rank them. |
| Confusing tasks with jobs | A task is a step. A job is the progress the user wants. |

## Application rules

- Before writing a user story, write the job story first. If the job doesn't exist, the user story is built on assumption.
- When the user interview gets stuck, switch from "what do you want?" to "when was the last time you tried to do X? Walk me through it."
- The real competitor is the alternative the user used *before* yours — not the alternative a PM thinks of.
- Jobs don't change quickly. The solutions that serve them do. Durable product strategy is anchored in jobs.

## When to relax

- B2B procurement has multiple stakeholders with different jobs (economic buyer, end-user, gatekeeper). One job story per stakeholder.
- Platform / infrastructure products often have a job that looks more like "avoid doing this thing" — the job is a negative outcome to prevent, not a positive one to produce.
