# lisp

Small wrapper script for evaluating the main function in files with SBCL.

The first argument is the filename, the second (optional) argument is the name of the function to evaluate. `main` is the default function name.

## Example usage

    lisp hello.cl hello

## Installation

    make install

or

    PREFIX=/usr make install

## Dependencies

* SBCL, with `/usr/bin/sbcl` available.

## Another example

Contents of **hello.cl**:

```lisp
(defun main ()
    (write-line "Hello, World!"))
```

Run with:

    lisp hello.cl

## General information

* License: MIT
* Version: 1.0
* Author: Alexander F. Rødseth &lt;xyproto@archlinux.org&gt;
