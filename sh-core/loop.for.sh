#!/bin/bash

FILES=/Users/tania/dev/*

for file in $FILES
do
  echo $(basename $file)
done
