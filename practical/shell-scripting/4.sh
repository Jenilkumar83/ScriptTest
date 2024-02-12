#!/bin/bash

file="/etc/shadow"

# Check if the file exists
if [ -e "$file" ]; then
    echo "Shadow passwords are enabled."

    # Check if you can write to the file
    if [ -w "$file" ]; then
        echo "You have permissions to edit $file."
    else
        echo "You do NOT have permissions to edit $file."
    fi

else
    echo "The file $file does not exist."
fi

