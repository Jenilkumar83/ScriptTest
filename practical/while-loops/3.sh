#!/bin/bash

while true; do
  echo "Menu:"
  echo "1. Show Disk Usage"
  echo "2. Show System Uptime"
  echo "3. Show Logged-in Users"
  echo "q. Quit"
  
  read -p "Enter your choice (1, 2, 3, or q): " choice
  
  case $choice in
    1)
      df -h
      ;;
    2)
      uptime
      ;;
    3)
      who
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
