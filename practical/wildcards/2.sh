#!/bin/bash

read -p "Enter the file extension (e.g., jpg): " file_extension

read -p "Enter the prefix (press enter for default YYYY-MM-DD format): " user_prefix

if [ -z "$user_prefix" ]; then
    prefix=$(date +%Y-%m-%d)
else
    prefix=$user_prefix
fi

for file in *."$file_extension"; do

    if [ -e "$file" ]; then

        filename=$(basename "$file")
        extension="${filename##*.}"

        new_filename="$prefix-$filename"

        echo "Original: $file"
        echo "New Name: $new_filename"

        mv "$file" "$new_filename"
    else
        echo "No .$file_extension files found in the current directory."
    fi
done
