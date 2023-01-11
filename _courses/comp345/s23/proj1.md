---
layout: class
title: "COMP 345, Spring 2023, Project 1"
semester: s23
---

## Project 1: Building a Key-Value Store

For this C warmup project you'll be implementing a key-value
store. This project is taken directly from our textbook authors, so
all the details [can be found
here](https://github.com/remzi-arpacidusseau/ostep-projects/tree/master/initial-kv).

One clarification: In the instructions, they note that the value of a
`put` can be "an arbitrary string (without commas in it)." We will
assume the value also cannot contain spaces.

### Running

The recommended way to compile the program is (note that `$` denotes
the command prompt):

```bash
$ gcc -o kv kv.c
```

Please read the lab tutorial (linked to from the instructions page)
for more details. If you compiled like that you can run it like this:

```bash
$ ./kv p,10,hello
$ ./kv g,10
10,hello
```

### Testing

Testing is vital -- test early and often. You can test manually by
running the program several times and verifying the output. But it's
better to have some automated tests so you can run many tests very
quickly, and do so after every change you make. In fact, the
philosophy of 'test-driven development' states that you should usually
write a test first, observe that it fails, and then make a small
change to the program to make the test pass. This process is then
repeated until the program is complete.

To facilitate your testing, you can use [this Python
script](./test_student.py) that I wrote. It runs several tests using
Python's `unittest` model, launching your program each time (assuming
your program is named `kv` and is in the same directory as the Python
script). I only provided a few basic tests; you will want to write
your own additional tests.

### Submitting

Submit using `handin` on the department server:

```bash
$ handin comp345 proj1 kv.c
```

**Due Friday, 1/20 by the start of class**
