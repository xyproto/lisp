#!/bin/sh
#
# SBCL wrapper script
#
# See https://github.com/xyproto/lisp for more information.
#

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

sbcl_path=$(which sbcl)
if [ -z $sbcl_path ]; then
  echo 'sbcl is not in the PATH environment variable'
  exit 1
fi
if [ ! -x $sbcl_path ]; then
  echo "$sbcl_path is not executable"
  exit 1
fi

"$sbcl_path" \
  --noinform \
  --noprint \
  --no-userinit \
  --no-sysinit \
  --disable-debugger \
  --quit \
  --load "$filename" \
  --eval "($mainfunction)" \
  --end-toplevel-options
