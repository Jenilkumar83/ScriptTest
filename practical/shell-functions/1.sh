#!/bin/bash

file_count() {
    local num_files=$(ls -1 | wc -l)
    echo "Number of files in the current directory: $num_files"
}
file_count
