---
layout: class
title: "COMP240 (S24) -- Projects Overview"
semester: s24
---

Disclosure: this document is based on one by Logan Mayfield.

This course is all group software development projects. To manage and
carry out the project you and your team will be working in an
[agile](https://en.wikipedia.org/wiki/Agile_software_development#The_Agile_Manifesto)
fashion.  Each project will require that you learn how to work with
new programming tools and ideas. Having a well established practice
for how to approach and structure your project work will help you
navigate the the challenges of dealing with new tools and dealing with
new programming problems.

### Group Structure and Paired Programming

Development groups in this course consist of small teams doing "pair"
programming. If your team has four members, you'll have two rotating
pairs. If you only have three members, you'll have one rotating
"triple". Expect pairs/triples to rotate on a nearly weekly basis.
When programming in pairs/triples one person (the *driver*) types and
one person (the *navigator* -- two people in the case of triples)
watches, catches typos and bugs, and otherwise supports the
driver. **Roughly every thirty minutes the roles should switch**.

One of the core principles of agile development is *collective
ownership*. No one programmer should own a part of the code. Knowledge
of some part of the system should not reside in only one programmer's
brain. Everyone on the team should be familiar with the code as a
whole and feel like they can add to, improve, or otherwise change the
code because the code belongs to everyone equally and not to the
person that happened to type it. This prospective helps to ensure that
work does not stop if someone leaves the team or is otherwise
unavailable and it develops a greater sense of working as a team
towards a common objective.

The final piece of our collective ownership puzzle is that you'll need
to work towards developing a consistent coding style for the
team. There should be agreed upon naming conventions, use of
whitespace, and use of comments.  To the extent possible, the code
should look like it was written by one person and not four different
authors. Part of this can be achieved through code
[linters](https://en.wikipedia.org/wiki/Lint_(software) and language
specific style conventions. The rest must come from the consensus of
the group and a agreement on [in-house
style](https://google.github.io/styleguide/) conventions.

### Make it Work

The goal of software development is to produce working software and in
agile practices working software is how progress and overall project
success is measured.  It's not lines of code or hours spent but what
works. During each class meeting there will be a chance to talk as a
group in order to set and track *feature* goals. Feature goals are all
about making the next *small* piece of the overall program work. It is
vitally important that you identify what feature, exactly, you want to
make work next and what, exactly, it will look like when you make that
feature work. You should be thinking in terms of demonstrating
progress to the group and the instructor at every class meeting if at
all possible. This could mean running some new functionality or
showing that a set of tests pass as proof that some new helper
functions are complete.

Features should be broken down into small, discrete *tasks* which are
prioritized, given an estmated time to complete, and assigned to
programming "pairs". As the assigned pair progresses through a task they
should keep track of the time spent working on that task. When the
task is complete the estimated time is divided by the actual time to
get the group's *velocity*. A velocity of 1 means you've estimated the
time needed perfectly. If you over estimate, then the velocity creeps
above one. The most likely situation is that you under estimate and
your velocity is below one. Either way, it's important to hone you
skills at estimating the time needed for a particular programming task
and track overall project velocity so that you have a real sense of
the pace of your work and if you're at risk of falling really behind.

The details of your tasks and the time spent working on them should
all be recorded in a shared spreadsheet that looks something like this:

| Feature | Task | Developers | Estimated Time | Elapsed Time | Velocity |
| :--:    | :--: | :--:       | :--:           | :--:         | :--:     |
|         |      |            |                |              |          |


As you set your goals you begin by filling in the features, tasks,
assigned developers, and time estimates. Elapsed time should be
updated after every time a pair sits down to work on a given task and
when the task is finally completed. When the task is complete the
finally velocity is calculated and reported.


By setting your own feature goals and tasks you are effectively
assigning yourselves homework. For this to work well there needs to be
an agreement about the time commitment needed for the project. This is
referred to as the *duty cycle*. Pairs need to coordinate their work
and the group should also agree on a working schedule that looks more
like a job and less like a typical class duty cycle. The syllabus
states that you should be spending and average of 6 to 7 hours a week,
outside of class, on your project. If you find that three hours of
class time plus six to eight hours outside of class are not enough to
meet your goals, then reconsider goals and tasks rather than overwork
yourselves. It's more important that you work mindfully and
purposefully towards realistic and achievable goals. The final form of
each project is flexible so long as you can demonstrate consistent
progress with a reasonable duty cycle.

### Make It Work Better

It is important that the team spend time figuring out how to work more
efficiently and effectively as a group and how the code might be
improved. We'll achieve some of this through peer and self evaluation,
but the group should also dedicate group discussion time after the
completion of a feature goal to reviewing code and evaluating working
practices.

Code reviews will be as simple as having each pair walk the other pair
through their code on a weekly basis. If someone sees some room for
improvement or a possible bug, then the group should consider taking
time to bug fix or *refactor* the code before implementing the next
feature. Refactoring is a process in which the code is restructured
and improved without changing the overall behavior. It's about
cleaning up how it does what it does and leaving what it does alone.

Process reviews are a matter of talking about how you all managed the
programming work. How was your velocity? Could your features and tasks
be smaller or perhaps a bit larger?  Are there some tasks you might
add that would aid in managing, sharing, and testing the code? In
general, what worked and didn't work? It should be important to you as
an individual and a group that you're not just getting things done but
doing thing well and growing as a developer.
