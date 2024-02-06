#!/bin/bash

if [ "$#" -eq 0 ]; then
    echo "Usage: $0 <file_or_directory1> [<file_or_directory2> ...]"
    exit 1
fi

for file_or_directory in "$@"; do

    if [ -e "$file_or_directory" ]; then

        if [ -f "$file_or_directory" ]; then
            echo "$file_or_directory is a regular file."

        elif [ -d "$file_or_directory" ]; then
            echo "$file_or_directory is a directory."

        else
            echo "$file_or_directory is another type of file."
        fi

        ls -l "$file_or_directory"
    else
        echo "$file_or_directory does not exist."
    fi
done
