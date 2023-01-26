---
layout: class
title: "COMP 345, Spring 2023, Project 2"
semester: s23
---

## Project 2: Building Your Own Unix Shell

For this project you'll put the process virtualization knowledge we've
been learning into practice by creating your own shell. As before,
this project is taken directly from our textbook authors, so all the
details [can be found
here](https://github.com/remzi-arpacidusseau/ostep-projects/tree/master/processes-shell).

### Developing

Put all your code in a single `wish.c` file. As usual, you'll compile
with `gcc`, probably something like

```bash
gcc -Wall -g -o wish wish.c
```

### Running

After compilation, you should be able to run `./wish` to start your
shell in interactive mode, at which point you can continuously type in
commands and see the output. Or, you can run something like

```bash
$ ./wish batch.txt
```

to specify that your shell should read that file (`batch.txt`) and
execute its commands. See the Github instructions for more details.

### Testing

Testing is vital -- test early and often. You can test manually by
running the program several times and verifying the output. The Github
repo also includes a tests folder and a test script. I highly
recommend setting this up so you can automatically run tests -- I will
use those tests (and potentially more) to grade your submissions! Come
to office hours for some help setting up the script.

### Submitting

Submit using `handin` on the department server:

```bash
$ handin comp345 proj2 wish.c
```

**Due Friday, 02/10 by the start of class**
