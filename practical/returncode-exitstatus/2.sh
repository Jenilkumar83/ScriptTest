#!/bin/bash

echo "Passed arguments: $@"
echo "Total passing arguments: $#"

for context in "$@";do

context="$1"

if [ -f "$context" ]; then
    echo "$context is a regular file."
    exit 0
elif [ -d "$context" ]; then
    echo "$context is a directory."
    exit 1
else
    echo "$context is some other type of file."
    exit 2
fi
done