#!/bin/sh
#
# SBCL wrapper script
#
# See https://github.com/xyproto/lisp for more information.
#

filename="$1"

flag=""
if [ ! -z $filename ]; then
  if [ ! -f $filename ]; then
    echo "Could not find $filename"
    exit 1
  fi
  flag="--load $filename"
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

"$sbcl_path" --noinform $flag
