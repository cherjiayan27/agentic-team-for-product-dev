# UX Laws

Reference for 30 psychological principles that govern how users perceive and interact with interfaces. Source: [Laws of UX](https://lawsofux.com).

**When relevant:** Evaluating UX decisions in FRDs, writing NFRs, reviewing designs, stress-testing onboarding flows, and assessing cognitive load in product specs.

## Contents

- [Aesthetic-Usability Effect](#aesthetic-usability-effect) — Attractive design perceived as more usable
- [Choice Overload](#choice-overload) — Too many options impair decisions
- [Chunking](#chunking) — Group information meaningfully
- [Cognitive Bias](#cognitive-bias) — Systematic errors in thinking
- [Cognitive Load](#cognitive-load) — Mental effort to use an interface
- [Doherty Threshold](#doherty-threshold) — Response under 400ms sustains attention
- [Fitts's Law](#fittss-law) — Target time = distance / size
- [Flow](#flow) — Immersive focus from balanced challenge
- [Goal-Gradient Effect](#goal-gradient-effect) — Effort increases near completion
- [Hick's Law](#hicks-law) — More choices = more decision time
- [Jakob's Law](#jakobs-law) — Users expect familiar patterns
- [Law of Common Region](#law-of-common-region) — Shared boundary groups elements
- [Law of Prägnanz](#law-of-prägnanz) — Brain seeks simplest interpretation
- [Law of Proximity](#law-of-proximity) — Nearby objects appear related
- [Law of Similarity](#law-of-similarity) — Similar elements perceived as grouped
- [Law of Uniform Connectedness](#law-of-uniform-connectedness) — Connected elements appear related
- [Mental Model](#mental-model) — Users apply prior system knowledge
- [Miller's Law](#millers-law) — Working memory holds ~7 items
- [Occam's Razor](#occams-razor) — Fewest assumptions wins
- [Paradox of the Active User](#paradox-of-the-active-user) — Users skip manuals, dive in
- [Pareto Principle](#pareto-principle) — 80% effects from 20% causes
- [Parkinson's Law](#parkinsons-law) — Tasks expand to fill available time
- [Peak-End Rule](#peak-end-rule) — Experiences judged by peak and end
- [Postel's Law](#postels-law) — Be liberal in input, conservative in output
- [Selective Attention](#selective-attention) — Users filter irrelevant stimuli
- [Serial Position Effect](#serial-position-effect) — First and last items most memorable
- [Tesler's Law](#teslers-law) — Irreducible complexity must go somewhere
- [Von Restorff Effect](#von-restorff-effect) — Distinctive items are remembered
- [Working Memory](#working-memory) — Temporary storage for active tasks
- [Zeigarnik Effect](#zeigarnik-effect) — Incomplete tasks remembered better

---

## Aesthetic-Usability Effect

**Definition:** Users often perceive aesthetically pleasing design as design that's more usable.

**Origin:** First documented in 1995 by Masaaki Kurosu and Kaori Kashimura (Hitachi Design Center). Study of 26 ATM interface variations with 252 participants showed aesthetic appeal correlated more strongly with perceived usability than actual usability.

**Takeaways:**
- Attractive design creates favorable mental responses, leading users to believe products work better than they do
- People overlook minor usability flaws when visual presentation is appealing
- Visually attractive interfaces may mask functional issues, hiding problems during testing

**Related:** Mental Model, Jakob's Law

---

## Choice Overload

**Definition:** People become overwhelmed when presented with numerous options, significantly impacting decision-making ability and satisfaction.

**Origin:** Introduced by Alvin Toffler in *Future Shock* (1970). Related to Hick's Law.

**Takeaways:**
- Excessive options reduce users' ability to make confident decisions
- Side-by-side comparison tools help users manage choices (e.g. pricing tier tables)
- Highlight recommended options; use search and filtering to reduce visible choices upfront

**Related:** Hick's Law

---

## Chunking

**Definition:** Individual pieces of information are broken down and grouped together in a meaningful way.

**Origin:** George A. Miller's 1956 paper "The Magical Number Seven, Plus or Minus Two." Miller demonstrated that short-term memory operates differently from channel capacity models.

**Takeaways:**
- Helps users scan content and identify information aligned with their goals
- Organizing content into visually distinct groups with clear hierarchy speeds processing
- Use grouping, separation rules, and hierarchy to clarify relationships

**Related:** Miller's Law, Cognitive Load, Working Memory

---

## Cognitive Bias

**Definition:** A systematic error in thinking or rationality that influences perception and decision-making.

**Origin:** Amos Tversky and Daniel Kahneman introduced the concept in 1972, demonstrating that human judgment deviates from rational choice theory through heuristics — mental shortcuts that estimate probabilities but introduce systematic errors.

**Takeaways:**
- Mental shortcuts conserve energy but unconsciously influence judgment
- Recognizing biases helps identify faulty reasoning in ourselves and others
- Confirmation bias causes people to seek information confirming preconceived ideas

**Related:** Peak-End Rule, Serial Position Effect, Chunking

---

## Cognitive Load

**Definition:** The amount of mental resources needed to understand and interact with an interface.

**Origin:** John Sweller's late-1980s research on problem-solving, building on Miller's information processing theories. Formalized in his 1988 paper "Cognitive Load Theory, Learning Difficulty, and Instructional Design."

**Takeaways:**
- When incoming information exceeds mental capacity, users struggle and details get missed
- Intrinsic load = mental effort to process relevant information and track goals
- Extraneous load = unnecessary processing from distracting design elements that don't aid comprehension

**Related:** Chunking, Working Memory, Miller's Law

---

## Doherty Threshold

**Definition:** Productivity increases when computer-user interaction occurs at a pace under 400 milliseconds, preventing either party from waiting on the other.

**Origin:** Walter J. Doherty and Ahrvind J. Thadani published research in the 1982 IBM Systems Journal establishing 400ms as the response time requirement, replacing the previous 2-second standard.

**Takeaways:**
- Provide feedback within 400ms to maintain user attention and boost productivity
- Use animation to engage users during background processing
- Progress indicators improve tolerance for wait times
- Strategic delays can enhance perceived value and build trust

**Related:** Fitts's Law, Flow, Choice Overload

---

## Fitts's Law

**Definition:** The time to acquire a target is a function of the distance to and size of the target.

**Origin:** Psychologist Paul Fitts, 1954. Demonstrated that movement time depends on distance and inversely relates to target size — foundational to modern conventions like large touch buttons.

**Takeaways:**
- Touch targets must be sufficiently large for accurate selection
- Adequate spacing between targets prevents selection errors
- Position targets within easy reach of user attention areas

**Related:** Flow, Doherty Threshold, Choice Overload

---

## Flow

**Definition:** The mental state in which a person is fully immersed in energized focus, full involvement, and enjoyment in an activity.

**Origin:** Psychologist Mihály Csíkszentmihályi, 1975. Concept has existed across cultures for millennia; prominent in occupational therapy and UX design.

**Takeaways:**
- Flow emerges from equilibrium between task difficulty and user skill level
- Excessive difficulty breeds frustration; insufficient challenge causes disengagement
- Meaningful feedback mechanisms help users understand their actions and progress
- Eliminate friction and ensure discoverable features to maintain engagement

**Related:** Goal-Gradient Effect, Doherty Threshold, Fitts's Law

---

## Goal-Gradient Effect

**Definition:** The tendency to approach a goal increases with proximity to the goal. Users accelerate efforts as they near task completion.

**Origin:** Behaviorist Clark Hull, 1932. Experiments demonstrated rats ran progressively faster approaching food.

**Takeaways:**
- Users work faster as they approach task completion
- Artificial progress indicators enhance motivation
- Clear progress visualization drives engagement

**Related:** Fitts's Law, Law of Common Region, Law of Proximity

---

## Hick's Law

**Definition:** The time it takes to make a decision increases with the number and complexity of choices.

**Origin:** Psychologists William Edmund Hick and Ray Hyman, 1952. Research showed that increased options require more time to interpret and decide.

**Takeaways:**
- Reduce decision points when speed matters
- Segment complex processes into manageable stages
- Guide users toward recommended selections to prevent decision fatigue
- Implement staged onboarding for new users

**Related:** Choice Overload, Doherty Threshold, Fitts's Law

---

## Jakob's Law

**Definition:** Users prefer websites to function similarly to other sites they already know. Users spend most of their time on other sites, so they transfer expectations to new ones.

**Origin:** Jakob Nielsen, principal of Nielsen Norman Group. Coined as part of his "discount usability engineering" movement.

**Takeaways:**
- Users transfer expectations from familiar products to similar new ones
- Leveraging existing mental models enables superior experiences — users focus on tasks, not learning
- During changes, minimize disruption by allowing users to use familiar versions temporarily

**Related:** Mental Model, Aesthetic-Usability Effect, Choice Overload

---

## Law of Common Region

**Definition:** Elements tend to be perceived as groups if they share an area with a clearly defined boundary.

**Origin:** Derived from Gestalt principles of grouping — psychological principles explaining how humans perceive objects as organized patterns. Categories: Proximity, Similarity, Continuity, Closure, Connectedness.

**Takeaways:**
- Common region creates clear structure and helps users understand relationships between elements
- Borders around elements are an effective way to establish common region
- Background colour behind groups also creates common region

**Related:** Law of Proximity, Law of Uniform Connectedness, Fitts's Law

---

## Law of Prägnanz

**Definition:** People will perceive and interpret ambiguous or complex images as the simplest form possible, because it requires the least cognitive effort.

**Origin:** Max Wertheimer, 1910. Observed flashing lights at a railroad crossing appearing to move as a single light — sparking insights foundational to Gestalt theory.

**Takeaways:**
- The eye naturally seeks simplicity and order to prevent cognitive overload
- People process and retain simple figures more effectively than complex ones
- The human eye reduces complex shapes into unified, simplified forms

**Related:** Hick's Law, Choice Overload, Law of Common Region

---

## Law of Proximity

**Definition:** Objects positioned near each other tend to be grouped together mentally, helping users perceive them as related or functionally similar.

**Origin:** Gestalt psychology principles of grouping. One of five core principles: Proximity, Similarity, Continuity, Closure, Connectedness.

**Takeaways:**
- Proximity establishes relationships between nearby objects
- Closely positioned elements appear to share similar functionality
- Enables faster, more efficient information organisation

**Related:** Law of Common Region, Law of Uniform Connectedness, Fitts's Law

---

## Law of Similarity

**Definition:** The human eye perceives similar elements as a complete picture, shape, or group, even when separated.

**Origin:** Gestalt psychology principles of grouping.

**Takeaways:**
- Visually similar elements are perceived as related
- Color, shape, size, orientation, and movement signal elements belong together
- Links and navigation should be visually distinct from regular text

**Related:** Law of Common Region, Law of Proximity, Law of Prägnanz, Law of Uniform Connectedness

---

## Law of Uniform Connectedness

**Definition:** Elements that are visually connected are perceived as more related than elements with no connection.

**Origin:** Gestalt psychology principles of grouping.

**Takeaways:**
- Group similar functions using visual connectors like colours, lines, frames, or shapes
- Use tangible connecting references (lines, arrows) between elements to establish relationships
- Apply uniform connectedness to demonstrate context and emphasise relationships

**Related:** Law of Common Region, Law of Proximity, Fitts's Law

---

## Mental Model

**Definition:** A compressed model based on what users think they know about a system and how it works.

**Origin:** Psychologist Kenneth Craik, *The Nature of Explanation* (1943). Proposed that people maintain mental representations of how the world operates to anticipate events and develop explanations.

**Takeaways:**
- Users apply mental models from familiar systems to new ones — enabling knowledge transfer without relearning
- Matching product design to user mental models enhances usability
- Identifying and closing the gap between designer and user mental models requires interviews, personas, and journey maps

**Related:** Jakob's Law, Aesthetic-Usability Effect, Choice Overload

---

## Miller's Law

**Definition:** The average person can only keep 7 (plus or minus 2) items in their working memory.

**Origin:** Psychologist George Miller, 1956. Established that immediate memory and absolute judgment capacity are limited to approximately 7 pieces of information.

**Takeaways:**
- Don't use "7 items" to impose unnecessary design constraints
- Break content into smaller chunks to enhance comprehension and retention
- Working memory capacity varies among individuals based on existing knowledge and context

**Related:** Chunking, Cognitive Load, Working Memory, Choice Overload

---

## Occam's Razor

**Definition:** Among competing hypotheses that predict equally well, the one with the fewest assumptions should be selected.

**Origin:** William of Ockham (c. 1287–1347), English Franciscan friar. The "law of parsimony" — select the solution that makes the fewest assumptions.

**Takeaways:**
- Avoiding complexity from the outset is the most effective approach to managing it
- Systematically evaluate each component and eliminate as many as feasible while preserving functionality
- Design reaches completion only when nothing further can be removed without losing essential value

**Related:** Aesthetic-Usability Effect, Paradox of the Active User, Pareto Principle

---

## Paradox of the Active User

**Definition:** Users never read manuals but start using the software immediately.

**Origin:** Mary Beth Rosson and John Carroll, 1987, *Interfacing Thought: Cognitive Aspects of Human-Computer Interaction*. Observed that new computer users bypassed instructional manuals and jumped directly into hands-on use.

**Takeaways:**
- Users prioritise accomplishing immediate goals over upfront learning
- While counterintuitive, users could benefit long-term by investing time mastering systems earlier
- Embed helpful guidance naturally within the product (contextual tooltips) rather than relying on external manuals

**Related:** Occam's Razor, Pareto Principle, Aesthetic-Usability Effect

---

## Pareto Principle

**Definition:** For many events, roughly 80% of the effects come from 20% of the causes.

**Origin:** Economist Vilfredo Pareto, who observed that 80% of Italy's land was owned by 20% of the population.

**Takeaways:**
- Distribution of inputs and outputs tends to be unequal
- Meaningful contributions often concentrate among a small subset
- Prioritise efforts on areas delivering maximum benefit to the most users

**Related:** Occam's Razor, Paradox of the Active User, Parkinson's Law

---

## Parkinson's Law

**Definition:** Any task will inflate until all of the available time is spent.

**Origin:** Cyril Northcote Parkinson, *The Economist* (1955), based on observations from the British Civil Service.

**Takeaways:**
- Set realistic time constraints aligned with user expectations to prevent task expansion
- Completing tasks faster than anticipated enhances user satisfaction
- Use features like autofill to expedite critical information entry

**Related:** Occam's Razor, Paradox of the Active User, Pareto Principle

---

## Peak-End Rule

**Definition:** People judge an experience largely based on how they felt at its peak and at its end, rather than the total sum or average of every moment.

**Origin:** Kahneman, Fredrickson, Schreiber, and Redelmeier, 1993. Study comparing hand-submersion trials showed participants preferred repeating a longer but slightly warmer-ended trial — demonstrating that memory of an experience differs from the actual experience.

**Takeaways:**
- Focus design attention on the most emotionally intense moments and concluding points of user journeys
- Identify peak moments where your product delivers maximum value or delight
- Negative experiences create particularly vivid memories

**Related:** Cognitive Bias, Serial Position Effect, Chunking

---

## Postel's Law

**Definition:** Be liberal in what you accept, and conservative in what you send.

**Origin:** Jon Postel, Internet pioneer. Originally applied to TCP network implementations as the Robustness Principle.

**Takeaways:**
- Show empathy and flexibility toward diverse user actions and inputs
- Anticipate varied user capabilities while maintaining reliability and accessibility
- Accept variable user input, translate it appropriately, establish clear boundaries, and provide helpful feedback

**Related:** Hick's Law, Choice Overload, Law of Prägnanz

---

## Selective Attention

**Definition:** The process of focusing attention on only a subset of stimuli — typically those connected to our goals.

**Origin:** Developed through landmark contributions: Donald Broadbent's Filter Theory (1958), E. Colin Cherry's cocktail party phenomenon (1953), Anne Treisman's Attenuation Model (1960), and Deutsch & Deutsch's Late Selection Theory (1963).

**Takeaways:**
- People filter out information not relevant to their current task — designers should guide attention and prevent cognitive overwhelm
- Banner blindness: users ignore banner-like content, especially elements resembling ads
- Change blindness: significant interface changes can go unnoticed without sufficient visual cues

**Related:** Von Restorff Effect, Chunking, Cognitive Load

---

## Serial Position Effect

**Definition:** Users tend to best remember the first and last items in a series; middle items are least memorable.

**Origin:** Herman Ebbinghaus. Combines primacy effect (better recall of beginning items) and recency effect (better recall of ending items).

**Takeaways:**
- Place least important items in the middle of lists — they are stored less frequently in long-term and working memory
- Position important actions at the far left and right of navigational elements

**Related:** Cognitive Bias, Peak-End Rule, Chunking

---

## Tesler's Law

**Definition:** For any system there is a certain amount of complexity which cannot be reduced (Law of Conservation of Complexity).

**Origin:** Larry Tesler, mid-1980s at Xerox PARC. Advocated that engineers should invest extra time reducing complexity rather than burden millions of users with it.

**Takeaways:**
- Every system contains irreducible core complexity that must be managed by either the system or the user
- Design and development should minimise user burden by absorbing inherent complexity
- Provide contextual guidance (tooltips) accessible to new users across different usage paths

**Related:** Hick's Law, Choice Overload, Law of Prägnanz

---

## Von Restorff Effect

**Definition:** When multiple similar objects are present, the one that differs from the rest is most likely to be remembered.

**Origin:** German psychiatrist Hedwig von Restorff, 1933. Research demonstrated that a distinctive item in a list of similar items significantly improves memory retention for that item.

**Takeaways:**
- Distinguish important information and primary actions through visual contrast
- Use emphasis sparingly to prevent visual elements from competing with each other
- Avoid relying solely on colour for contrast — consider users with colour vision deficiencies
- Account for motion-sensitive users when applying motion-based contrast

**Related:** Selective Attention, Chunking, Cognitive Bias

---

## Working Memory

**Definition:** A cognitive system that temporarily holds and manipulates information needed to complete tasks.

**Origin:** George A. Miller, Eugene Galanter, and Karl H. Pribram introduced the term in the 1960s. Formally defined by Atkinson and Shiffrin in 1968 as "short-term store." Modern concept emphasises manipulation, not just retention.

**Takeaways:**
- Working memory capacity is constrained to 4–7 information chunks, each lasting 20–30 seconds — present only necessary, relevant information
- Recognition surpasses recall — mark viewed content (visited links, breadcrumbs) to reduce memory strain
- Transfer memory demands to the system — carry critical information across screens, use comparison tables to minimise recall requirements

**Related:** Chunking, Cognitive Load, Selective Attention, Miller's Law

---

## Zeigarnik Effect

**Definition:** People remember uncompleted or interrupted tasks better than completed tasks.

**Origin:** Soviet psychologist Bluma Wulfovna Zeigarnik, 1920s. Research comparing recall of incomplete vs complete tasks found unfinished work left stronger mental impressions.

**Takeaways:**
- Signal additional content clearly to encourage exploration
- Provide artificial progress milestones to boost completion motivation
- Display clear progress indicators to sustain engagement toward task completion

**Related:** Chunking, Cognitive Bias, Cognitive Load
