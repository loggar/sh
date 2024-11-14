#!/bin/bash

SEARCH_PATH="${1:-./lib/files-json/}"
MAX_DEPTH="${2:-10}"

# Using jq
for file in $(find $SEARCH_PATH -name *.json -maxdepth $MAX_DEPTH)
do
  rm -f "${file}_temp"
  jq --indent 2 . "$file" > "${file}_temp"
  if [ -s "${file}_temp" ]; then
    mv "${file}_temp" "$file"
  else
    rm -f "${file}_temp"
  fi
done
