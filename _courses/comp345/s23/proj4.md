---
layout: class
title: "COMP 345, Spring 2023, Project 4"
semester: s23
---

## Project 4: File System Checker

For this project you'll get some real file system programming
experience by creating a file system checker.As in past projects, the
details are on our textbook authors' Github, in the [ostep-projects
repo](https://github.com/remzi-arpacidusseau/ostep-projects/tree/master/filesystems-checker)

## Your Program

Write all your code in one file, `xcheck.c`. You can compile this
program with gcc, or use a Makefile. Try adapting a Makefile from a
previous project.

### xv6 Notes

We will be using the x86 version of xv6, revision 8. You can find that version of the bok [here](https://pdos.csail.mit.edu/6.828/2014/xv6/book-rev8.pdf).

You will also need the xv6 souce code. You should clone it from git, then checkout the revision that we are using. Something like this:

```sh
git clone https://github.com/mit-pdos/xv6-public xv6
git checkout tags/xv6-rev8
```

xv6 is an entire OS, so much of the code will be irrelevant. `fs.h`
and `mkfs.c` are most relevant, along with a few others.

`fs.h` defines the structures and parameters for xv6's file system.

`mkfs.c` is the program that actually creates file system. You can
compile it by running `gcc -Werror -Wall -std=gnu99 -o mkfs
mkfs.c`. Alternative you can use the Makefile by running `make mkfs`,
but note that you'll need to first modify the Makefile target by
adding the `-std=gnu99` flag.

Once compiled, you can run `./mkfs fs.img` to make an xv6 file system
image. This image should not have any errors. It is highly recommended
that you copy `mkfs.c` (possibly several times) and modify the code to
create corrupted file system images. Then you can check that your
program finds the errors.


### Submitting

Submit using `handin` on the department server:

```bash
$ handin comp345 proj4 xcheck.c
```

**Due Wednesday, 05/03 by midnight.**
