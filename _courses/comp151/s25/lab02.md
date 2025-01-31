---
layout: class
title: "COMP 151, Spring 2024, Lab 03"
semester: s24
---

## Lab 03: Experiments with Turtle

Our book has some nice content using `turtle`, such as [this
activity](https://runestone.academy/ns/books/published/monmouth-comp151-spring25/Projects/drawing_a_circle.html#drawing-a-circle),
but doesn't involve enough problem solving with it.

So, I created a custom lab which involves `turtle`, `random`, and just
a bit of problem solving.

### Instructions

Choose any code block from the book. Something from the [Drawing a
Circle with the
Turtle](https://runestone.academy/ns/books/published/monmouth-comp151-spring25/Projects/drawing_a_circle.html#drawing-a-circle)
activity would be fitting, but it doesn't really matter.

You need to write code that satisfies the following requirements:

- Randomly choose a number between 1 and 10 (inclusive), call it `n`.
- In a loop, create `n` turtles.
- For each turtle:
  - Assign them a random color.
  - Choose a random radius from 50, 75, 100, 125, 150
  - Have the turtle draw a circle with that radius and color
- At the end, print total and average distance travelled 

**Note**: Each turtle should choose its color and radius independently
of the other turtles.

When you are done, raise your hand and show me your code.

### Hints

- In addition to our book's chapters on `turtle` and `random`, you
  will probably need to skim Python's official documentation for the
  [`turtle` module](https://docs.python.org/3/library/turtle.html) and
  for the [`random`
  module](https://docs.python.org/3/library/random.html).
- To draw a circle, learn about [`turtle`'s `circle`
  method](https://docs.python.org/3/library/turtle.html#turtle.circle).
- You will need just a little bit of [chapter
  6](https://runestone.academy/ns/books/published/monmouth-comp151-spring25/Sequences/toctree.html)
  content to create a list of possible radii, and maybe a list of
  possible colors. Luckily, we'll cover enough of that right before
  lab.
- To choose an item randomly from a list, learn about [`random`'s
  `choice`
  method](https://docs.python.org/3/library/random.html#random.choice).
- To figure out the area a turtle traveled, you'll need to use the
  formula for the circumference of a circle.
- To compute the **total** distance all turtles have traveled, you'll
  need to have a separate variable that starts at 0 and gets added to
  inside your loop. This is your first example of the *accumulator*
  pattern. Don't be afraid to ask for help about this.

