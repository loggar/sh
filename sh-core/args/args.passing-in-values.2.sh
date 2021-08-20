#!/usr/bin/env bash

# $ ./args.passing-in-values.2.sh val1

arg1="all"

if [ $# -gt 0 ]; then
  arg1=$1
fi

echo "arg1 : $arg1"

if [ "$arg1" == "all" ]; then
  echo "for all"
fi

if [ "$arg1" == "you" ]; then
  echo "for you"
fi

if [ "$arg1" == "all" ] || [ "$arg1" == "you" ]; then
  echo "for somebody"
fi
