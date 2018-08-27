#!/bin/sh
cat <<EOF>> /tmp/_hello.cl
(defun hello ()
  (write-line "What is your name?")
  (let ((name (read-line)))
    (format t "Hello, ~A.~%" name)))
EOF
./lisp.sh /tmp/_hello.cl hello
rm /tmp/_hello.cl
