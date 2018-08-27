#!/bin/sh
filename="$1"
mainfunction="${2:-main}"
if [ -z $filename ]; then
  echo 'Please provide a filename as the first argument'
  exit 1
fi
if [ ! -f $filename ]; then
  echo "Could not find the file named \"$filename\""
  exit 1
fi
if [ ! -x /usr/bin/sbcl ]; then
  echo '/usr/bin/sbcl is not executable'
  exit 1
fi
/usr/bin/sbcl \
  --noinform \
  --noprint \
  --no-userinit \
  --no-sysinit \
  --disable-debugger \
  --quit \
  --load "$filename" \
  --eval "($mainfunction)" \
  --end-toplevel-options
