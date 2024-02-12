#!/bin/bash

echo "Passed arguments: $@ "
echo "Total passed arguments: $# "

directory="/home/einfochip"

for file in "$@"; do
    if [ -e "$directory/$file" ]; then
        if [ -d "$directory/$file" ]; then
            echo "The input '$file' is a directory."
        elif [ -f "$directory/$file" ]; then
            echo "The input '$file' is a file."
        else
            echo "The input '$file' is neither a file nor a directory."
        fi
    else
        echo "The input '$file' does not exist in $directory."
    fi
done

