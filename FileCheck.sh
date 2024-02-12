#!/bin/bash

echo "Passed arguments: $@"
echo "Total passing arguments: $#"

for context in "$@";do

    if [ -d "$context" ]; then
        echo "The input '$context' is a directory."

    elif [ -x "$context" ]; then
        echo "The input '$context' is an executable."

    elif [ -f "$context" ]; then
        echo "The input '$context' is a file."

    else
        echo "The input '$context' is neither an executable, file, nor directory."
    fi
    
done
