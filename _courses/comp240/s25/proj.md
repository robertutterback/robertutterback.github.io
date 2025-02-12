---
layout: class
title: "COMP240 (S25) -- Projects Overview"
semester: s25
---

All projects follow these guidelines. Specific instructions will be
given for each project, some of which might override these.

This document contains not only requirements, but also general useful
(in my opinion) advice. Read it thoroughly, then revisit it
occasionally during each project.

## General Guidelines

- Use a Scrum process, as discussed in class:
  - Work in week-long
    [sprints](https://en.wikipedia.org/wiki/Scrum_(software_development)#Sprint)
    (unless otherwise specified). Remember that you should have a
    prototype at the end of each sprint, with *something* working.
  - Before each project, develop [user
    stories](https://en.wikipedia.org/wiki/User_story) in the
    described format: "As a [type of user] I want [some goal] so that
    [some reason]". Estimate the effort required with [planning
    poker](https://en.wikipedia.org/wiki/Planning_poker)
    (points). Store these estimates in the product backlog via GitHub
    issues. If needed, revisit these before each sprint, adding or
    modifying them.
  - Before each sprint, perform "sprint planning" to determine which
    stories you will work on during the sprint. If this isn't the
    first sprint, make sure this happens *before* the previous
    sprint's checkpoint presentation, so that you can talk about it
    during the presentaiton.
  - 3 or more 'standup' meetings per sprint. Email me attendance,
    length of time, and very brief notes. As a reminder, these are
    short (5-10 minute) meetings where each member addresses three
    questions:
    
      1. What have I done recently that helped us meet out sprint goals?
      2. What will I do today (or until the next meeting)?
      3. What obstacles are preventing progress?
    
    After the 'standup' meeting, you might move directly into pair
    programming, or you might take some time to do sprint planning,
    story time, etc. No email or notes are necessary for these things.
  - Track your sprint backlog and velocity (points per sprint) however
    you want; you will show me these in the presentations.
  - Near the end of the sprint (but before a presentation), perform a
    sprint retrospective, focusing on your development process.
  - Before a presentation, perform sprint planning for the next sprint.
- When closing an issue, make sure its status is clearly: fully
  implemented, partially done, abandoned?
- Sprint Retrospectives: In general, consider and analyze anything
  related to your development process. Examples include, but are not
  limited to:
  - How was your velocity? What can be done to improve it?
  - Could your user stories/tasks be smaller? Larger?
  - Can you make a change to aid in managing, sharing, or testing code?
  - What tools did you use effectively? Which should be better
    utilized? Which are unnecessary distractions?
  - In general, what wrked and didn't work?
  - At an individual level, how did you work with the team, and how
    can you improve?
- Do not be surprised when things don't go as planned; this is not
  unusual. Do you best to make in-sprint adjustments so that you still
  have a working prototype, even if you can't meet all your sprint
  goals. After the sprint, consider whether changes are necessary
  (your sprint retrospective).
- By setting your own user stories, you are effectively assigning
  yourselves homework. Aim to work for as much time as the syllabus
  says: roughly 7 hours per week outside of class. Significant
  deviations from this mean you need to reconsider your user stories
  for the next sprint. The final form of each project is flexible so
  long as you can demonstrate consistent progress with a reasonable
  time commitment.
- Wherever possible, work in separate branches, merged with pull requests.
- For significant user stories, perform a thorough code review in the
  pull request. I should see comments and discussion. The pull request
  author might also walk the other team members through the code. You
  can revisit your pull request comments to create each presentation's
  code review section.
- Aim for small, incremental changes. Smaller than you think. Yet a
  commit should also not break anything. If something is broken, fix
  it before committing (if possible).
- In that vein, select small user stories and make sure they clear
  "definitions of done". For each one, think about how you might
  demonstrate its progress during the next presentation.
- Use GitHub effectively (see below section). I want to see activity from everyone.
- [Program in pairs or triples whenever
  possible](https://en.wikipedia.org/wiki/Pair_programming). Take
  turns (roughly every 30 minutes) being the "driver" (typing at the
  keyboard) and an observer/navigator, who reviews each typed line and
  provides guidance. This actually tends to be MORE effective than
  splitting tasks up individually. Pair programming is best for novel
  or challenging tasks; if you are confident your tasks are both short
  and easy, you may complete them individually.
- One of the core principles of agile development is *collective
  ownership*. No one programmer should own a part of the
  code. Knowledge of some part of the system should not reside in only
  one programmer’s brain. Everyone on the team should be familiar with
  the code as a whole and feel like they can add to, improve, or
  otherwise change the code because the code belongs to everyone
  equally and not to the person that happened to type it. This
  prospective helps to ensure that work does not stop if someone
  leaves the team or is otherwise unavailable and it develops a
  greater sense of working as a team towards a common objective.
- Develop a consistent coding style. Since you are new to this style
  of development, this may happen gradually, over the course of the
  project. At the very least, you should have consistent variable
  naming conventions, use of whitespace, and commenting/documentation.
- Wherever possible, test your code. Automated tests are
  preferred. This may require looking up testing libraries for the
  project's programming language. For user interfaces, automated
  testing is beyond the scope of this course, so manual testing is
  acceptable.
- Restrictions or allowances for AI usage will be provided on a
  per-process basis. If a project description does not make any note
  about AI, assume that no AI usage is allowed.
- You are generally allowed to use other human-written internet
  sources, with the restriction that you may not copy and paste
  code. When trying to solve a particular problem, the best way to
  avoid accusations of cheating is the following process:

  1. Search for your problem.
  2. Read the various search results until you understand the problem
     and how to fix it, studying any found code to see how it might
     need to be modified to fit into your code base. If the fix is
     quite small (e.g., 1 line), you can go ahead and implement
     it. Otherwise, do not type any code yet.
  3. Close all search-related tabs.
  4. Take a 5 minute break, e.g., go for a brief walk.
  5. Return and code up your solution without reopening any related
     browser tabs.

## GitHub Activity

For each project, I expect to see contributions from every team member
on GitHub. This can include commits, creating or closing issues or
pull requests, comments and discussion, and more.

It is not necessary for each member's contributions to have the same
profile. This course typically includes students of varying
programming background. Hence, some students may make more code
commits, while other students can focus on writing documentation,
creating issues, code review, etc.

As a group, however, I am looking for the following:

| Criteria         | Excellent (100%)                                                        | Good (85%)                                                  | Needs Improvement (70%)                             | Unsatisfactory (0--50%)                          |
|------------------+-------------------------------------------------------------------------+-------------------------------------------------------------+-----------------------------------------------------+--------------------------------------------------|
| Commits          | Frequent, meaningful commits with clear messages                        | Regular commits but messages lack detail                    | Rare commits. Unclear messages.                     | Commits are infrequent, meaningless, or missing. |
|------------------+-------------------------------------------------------------------------+-------------------------------------------------------------+-----------------------------------------------------+--------------------------------------------------|
| Pull Requests    | All tasks merved via pull requests with clear descriptions and reviews. | Most tasks use pull requests; some lack clarity or reviews. | Minimal use of pull requests; no meaninful reviews. | No pull requests or fails to merge work.         |
|------------------+-------------------------------------------------------------------------+-------------------------------------------------------------+-----------------------------------------------------+--------------------------------------------------|
| Issues           | Actively uses GitHub issues to track tasks, bugs, user stories, etc.    | Uses issues but some tasks are untracked or disorganized.   | Few issues created or used minimally.               | No meaningful use of GitHub issues.              |
| Standup Meetings | 3 meetings per full sprint, brief description emailed                   | 2 meetings, notes emailed                                   | 1 meeting, notes emailed                            | 0 meetings                                       |

Overall, GitHub activity is worth 20 points (out of 100) for each project.

## Project Results Rubric

The resulting code of each project is worth 60 points (out of 100). I
have tried to balance attributes such as correctness, style,
documentation, modularity, and testing, with expectations scaled
appropriately for a 200-level course.

This is not your first programming course; you should have some idea
of how to write clean, organized code. This course has a variety of
students, so some may be more used to this than others. Students with
more experience should be making an effort to mentor other students
based on the below categories:

- Correctness: Focus on meeting core requirements with some handling
  of edge cases.
- Style: Prioritize readability and consistency; minor deviations are
  acceptable if intentional and well-documented.
- Documentation: Comments should focus on explaining why decisions
  were made rather than what the code does (unless non-obvious).
- Modularity: Encourage breaking large blocks into smaller, reusable
  pieces, but perfection is not expected.
- Testing: Simple tests for major functionality and edge cases are
  enough. Automated tests are preferred where feasible.


| Criterion (points)          | Excellent                                                                                 | Good                                                                               | Needs Improvement                                                                          | Unsatisfactory                                             |
|-----------------------------+-------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------+------------------------------------------------------------|
| Correctness (21)            | Meets all functional requirements. Bugs, if any, are minor and rare.                      | Meets most requirments, minor issues (e.g., unhandled edge cases)                  | Major functional issues or significant unhandled cases                                     | Non-functional or fails to meet key requirements.          |
| Style/Consistency (9)       | Clean, readable, consistent formatting and conventions.                                   | Mostly readable, minor inconsistencies.                                            | Inconsistently styled, difficult to follow. Poor naming conventions.                       | Messy, hard to read. No attention to style or conventions. |
| Documentation (9)           | Meaningful comments. Docstrings where appropriate.                                        | Some comments, but missing important areas. Sometimes too many redundant comments. | Sparse or poorly written documentation, unclear logic.                                     | Absent or unhelpful documentation.                         |
| Organization/Modularity (9) | Well-organized, reusable code. Small, management pieces of logic.                         | Mostly modular, but some pieces are too large or pooly designed.                   | Lacks modularity, large blocks of repetitive or hard-to-reuse code.                        | Poorly structured, monolithic blocks.                      |
| Testing (6)                 | Code includes meaningful, automated tests where appropriate.                              | Tests most functionality, but misses some edge cases.                              | Minimal testing or relies only on manual verification where automated testing is possible. | No testing, correctness not verified at all.               |
| Overall Effort (6)          | Scope and ambition in line with project expectations. Demonstrates creativity and effort. | Meets bare minimum project requirements but lacks ambition or creativity.          | Partially meets requirements.                                                              | Missing basic requirements and minimal effort shown.       |


## Presentation Rubric

Overall, presentations are worth 20 points (out of 100) for each project.

I don't claim to be an expert in presentations. The most important
thing you can do it practice giving presentations. But here are some
tips:

1. *Practice!*: plan and rehearse in front of teammates or friends to
   smooth your speaking, timing, and clarity. Ask for feedback on
   timing and clarity.
2. Clarify: avoid jargon. Explain concepts clearly, but only explain
   what is necessary.
3. Visualize: use visuals -- screenshots, code snippets, diagrams. Aim
   for one visual on each slide, though that is not always achievable.
4. Engagement: thorough participation from all team members. Use a clear and confident tone.
5. Time Management: Do *NOT* go over the time limit. Practice so you
   have a rough idea of the time limit.
6. Number your slides.
7. Use an outline slide. It should be shown at least near the
   beginning of the presentation. I also generally like to see it
   flashed up between major sections, although that is just a personal
   preference.
8. Don't add too much text to slides. Don't just read directly off the
   slide - slides should complement, not replace, your spoken
   explanation. Where you include text, prefer bullet points or
   concise phrases, not full sentences. People have varying opinions
   on exactly how much text is okay. Personally I prefer only sparse
   text, but I am accomodating to other styles as long as the amount
   of text is not overwhelming.
9. Perhaps the most overlooked and most important: don't try to cover
   too much. You will either go over time or rush. Decide carefully
   what the right "story" is, and which parts are truly essential to
   tell it.
   
The following rubrics, while still a bit vague, should give you an
idea of what I'm looking for.

### Checkpoint Presentations (10 points total)

A checkpoint presentation should be about 5--10 minutes. The purpose
is to share progress with the "product owner" and stakeholders, while
also reflecting on the team's workflow.

It should have the following sections:

  1. Demo: show the current state of the game, highlighting any bugs
     you fixed and features (user stories) you added.
  2. User Stories and Velocity: List your completed user stories (in
     user story format), and show the team's velocity (both for this
     sprint and previous ones). Velocity should be presented two ways:
     (1) the number of points completed in a sprint, and (2) points
     completed per person-hour of work.
  3. Code 'Review': Present one interesting or challenging code
     snippet, explaining what it does, how you approached it, and how
     it works. Must be explained by someone who did NOT write it. (You
     may also comment on coding style you developed or decided on
     related to this code.) When choosing a snippet, prioritize code
     that demonstrates teamwork, tackles complexity, or showcases your
     learning process (e.g., debugging a challenging issue or
     requiring research).
  4. AI & Internet Usage: Describe the internet sources and AI helpers
     you used, and explain how you used them. Each individual project
     may have different restrictions or allowances for AI usage.
  5. Retrospective: Present a simulated SCRUM 'retrospective' meeting,
     where you discuss what went well, what didn't go well, and what
     you would do differently next time. This is not at the level of
     implementation, but is instead about your team's process of
     development. Focus on concrete examples for what went well or
     didn't, e.g., "splitting tasks evenly helped us avoid
     bottlenecks", or "poor communication caused delays"
  6. Future plans: Stories/ideas for next sprint.
  
Checkpoint presentations are a great way to practice presentation
skills in a relatively low-stakes environment. They should be
well-organized, yet can be much less formal than the final project
presentation. Giving several of these per project gives you a chance
to get into a rhythm.


| Section            | Excellent (100%)                          | Good (85%)                                                      | Needs Improvement (70%)             | Unsatisfactory (0--50%)           |
|--------------------+-------------------------------------------+-----------------------------------------------------------------+-------------------------------------+-----------------------------------|
| Demo               | Functional feature w/o unexpected bugs.   | Mostly functional; minor issues.                                | Partially functional. Disorganized. | Prototype broken or demo absent.  |
| User Stories       | Clearly, concise stories. Velocity shown. | Clarity/organizaiton issues.                                    | Stories missing or unclear.         | No user stories.                  |
| Code Review        | Insightful explanation, organized code.   | Adequate explanation, minor gaps in knowledge.                  | Shallow or disorganized review.     | No meaningful review.             |
| AI/Internet Usage  | Full explanation.                         | Adequate explanation but lack of detail.                        | Minimal explanation.                | No explanation/description.       |
| Retrospective      | Thoughtful, actionable insights.          | Basic but adequate analysis/insights.                           | Minimal or vague analysis.          | Missing.                          |
| Future Plans       | Clear, realistic goals.                   | Unclear or unrealistic goals.                                   | Minimal planning.                   | No plans discussed.               |
| Presentation Style | Clear, engaging, well-paced.              | Adequate but lacks engagement, or too much reading from slides. | Disorganized or unengaging.         | Difficult to follow or no effort. |

### Final Project Presentations (10 points)

The final project presentation is longer (15--20 minutes) and should
be significantly more polished. The purpose is to reflect on the
project's development and *teach* key concepts, with a target audience
of freshman CS students (think COMP151 and COMP152). Simplify and
clarify accordingly: use simple language, visuals, and focus on the
'why' behind your decisions.

Required sections:

  1. Motivation: why was the project chosen? What were you supposed to learn?
  2. Development Process: Teach Scrum workflow. Reflect on your sprint cycle and velocity.
  3. AI & Internet Usage: Document and explain how you used internet
     sources and AI in your workflow (if applicable). Comment on what
     worked, how you might improve how you use the tools, and any
     dangers of long-term use.
  4. Demo: Show off your final product. It is perfectly fine if you
     did not get everything done that you planned to, but it IS
     important that you have a working prototype! Things can be
     unfinished, but not buggy!
  5. Code Highlighting: Discuss a key piece of code (or two). Explain
     it clearly, with visuals and careful pacing so that COMP151
     students get the idea. You may also comment on coding style here.
  6. Reflection: Both successes and mistakes (both coding and project
     management). What would you do differently if you could restart?
  7. Future Directions: If you had another sprint, what would you focus on?

Generally, the same rubric categories as checkpoint presentations, but
I expect deeper insights, detailed explanations, and significantly
more polish.

| Section            | Excellent (100%)                                     | Good (85%)                       | Needs Improvement (70%)              | Unsatisfactory (0--50%)          |
|--------------------+------------------------------------------------------+----------------------------------+--------------------------------------+----------------------------------|
| Motivation         | Clear, compelling, well-articulated                  | Adequate but lacks depth         | Shallow or incomplete                | Missing or vague                 |
| Dev. Process       | Detailed explanation of Scrum; teaches concepts well | Covers basics but lacks clarity  | Limited or unclear explanation       | Process explanation missing      |
| AI/Internet Usage  | Full explanation and actionable insights             | Description but unclear analysis | Description but no analysis          | No explanation or reflection     |
| Demo               | Functional, smooth, highlighting key achievements    | Mostly functional; minor issues  | Partially functional or disorganized | Incomplete or absent.            |
| Code Highlight     | Insightful explanation, clear visuals and pacing     | Adequate, minor gaps             | Shallow or disorganized review       | No meaningful explanation        |
| Reflection         | Actionable insights on project management            | Adequate but basic insights      | Minimal or vague insights            | No reflection                    |
| Future Directions  | Realistic, thoughtful next steps                     | Unclear or superficial goals     | Minimal planning shown.              | No plans discussed               |
| Presentation Style | Clear, engaging, professional                        | Lacks polish or full engagement  | Disorganized or unengaging           | Difficult to follow or no effort |

