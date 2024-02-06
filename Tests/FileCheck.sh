#! /bin/bash

read -p "Enter a file or directory path: " input

if [ -x "$input" ]; then
    echo "The input '$input' is an executable."

elif [ -f "$input" ]; then
    echo "The input '$input' is a file."

elif [ -d "$input" ]; then
    echo "The input '$input' is a directory."

else
    echo "The input '$input' is neither a file nor a directory."
fi
