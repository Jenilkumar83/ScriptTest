#!/bin/bash


if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <file_or_directory>"
    exit 3
fi

file_or_directory="$1"


if [ -f "$file_or_directory" ]; then
    echo "$file_or_directory is a regular file."
    exit 0

elif [ -d "$file_or_directory" ]; then
    echo "$file_or_directory is a directory."
    exit 1
else
    echo "$file_or_directory is some other type of file."
    exit 2
fi
