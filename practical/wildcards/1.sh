#!/bin/bash

# Enable nullglob to handle cases where no ".jpg" files are present
shopt -s nullglob

date_today=$(date +%Y-%m-%d)

jpg_files=(*.jpg)

if [ ${#jpg_files[@]} -eq 0 ]; then
    echo "No .jpg files found in the current directory."
else
    for file in "${jpg_files[@]}"; do

        filename=$(basename "$file")
        extension="${filename##*.}"

        new_filename="${date_today}-${filename}"

        mv "$file" "$new_filename"
        echo "Renamed: $file to $new_filename"
    done
fi
