#!/bin/bash

if [ ! -f /etc/passwd ]; then
  echo "Error: /etc/passwd file not found."
  exit 1
fi

while IFS= read -r line; do
  ((line_number++))
  
  echo "${line_number}: ${line}"
done < /etc/passwd
