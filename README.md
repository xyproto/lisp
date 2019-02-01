# lisp

Two small wrapper script to make dealing with SBCL more intuitive for newcomers to LISP.

## Interactive use

    lispi
    (+ 1 2)

Then press `ctrl-d` to exit.

## Running a file

Create **hello.cl** with this content:

```lisp
(defun main ()
    (write-line "Hello, World!"))
```

Run the `main` function in `hello.cl` with:

    lisp hello.cl

The function to run can also be specified explicitly:

    lisp hello.cl main

## Usage

For the `lisp` command, the first argument is the filename, the second (optional) argument is the name of the function to evaluate. `main` is the default function name.
For the `lispi` command, the first (optional) argument is the name of a file to load.

## Dependencies

* SBCL, with `/usr/bin/sbcl` available.
* A POSIX shell, with `/bin/sh` available (should come by default with all distros).

## Installation

    make install

or

    PREFIX=/usr make install

## General information

* Version: 1.1.0
* License: MIT
* Author: Alexander F. Rødseth &lt;xyproto@archlinux.org&gt;
