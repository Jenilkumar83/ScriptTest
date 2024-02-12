#!/bin/bash

if [ "$#" -eq 1 ]; then
    file_or_dir="$1"

    if [ -e "$file_or_dir" ]; then

        if [ -f "$file_or_dir" ]; then
            file_type="Regular File"
        elif [ -d "$file_or_dir" ]; then
            file_type="Directory"
        else
            file_type="Other Type"
        fi

        echo "File/Directory Type: $file_type"

        ls -l "$file_or_dir"
    else
        echo "Error: The specified file or directory does not exist."
    fi
else
    echo "Usage: $0 <file_or_directory>"
fi

