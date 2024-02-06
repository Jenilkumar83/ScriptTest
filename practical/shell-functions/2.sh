#!/bin/bash

file_count() {
    local directory=$1
    local num_files=$(ls -1 "$directory" | wc -l)
    echo "$directory:"
    echo "Number of files: $num_files"
    echo
}
file_count "/etc"
file_count "/var"
file_count "/usr/bin"
