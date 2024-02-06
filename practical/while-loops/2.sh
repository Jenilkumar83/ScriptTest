#!/bin/bash

if [ ! -f /etc/passwd ]; then
  echo "Error: /etc/passwd file not found."
  exit 1
fi

read -p "Enter the number of lines to display from /etc/passwd: " num_lines

if ! [[ "$num_lines" =~ ^[1-9][0-9]*$ ]]; then
  echo "Error: Please enter a valid positive integer."
  exit 1
fi

head -n "$num_lines" /etc/passwd
