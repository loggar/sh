#!/usr/bin/env bash

my_var="my text"

echo "$my_var"

str_a="Hello world"

echo ${str_a#Hello}

echo $str_a

echo ${str_a:4:4}

echo "Today is $(date)"

echo "Today is \$(date)"