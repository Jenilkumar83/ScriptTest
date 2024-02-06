#!/bin/bash
read -p "Enter the name of a file or directory: " file_or_directory

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
