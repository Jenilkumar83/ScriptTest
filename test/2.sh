#!/bin/bash

while true; do
  echo "Menu:"
  echo "1. hostname"
  echo "2. uptime"
  echo "3. pwd"
  echo "q. quit"
  
  read -p "Enter your choice (1, 2, 3, or q): " choice
  
  case $choice in
    1)
      hostname
      ;;
    2)
      uptime
      ;;
    3)
      pwd
      ;;
    q)
      echo "Goodbye!"
      exit 0
      ;;
    *)
      echo "Invalid option."
      ;;
  esac
  
  echo
done
