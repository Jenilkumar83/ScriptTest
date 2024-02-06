#!/bin/bash

# Define the path to the sleep­walking­server executable
SLEEP_WALKING_SERVER="/tmp/sleep­walking­server"

# Check if the sleep­walking­server executable exists
if [ ! -x "$SLEEP_WALKING_SERVER" ]; then
  echo "Error: sleep­walking­server not found or not executable."
  exit 1
fi

# Check the number of arguments
if [ "$#" -ne 1 ]; then
  echo "Usage: $0 start|stop"
  exit 1
fi

# Perform action based on the provided argument
case "$1" in
  "start")
    # Start sleep­walking­server
    "$SLEEP_WALKING_SERVER" &
    ;;
  "stop")
    # Stop sleep­walking­server
    if [ -e "/tmp/sleep­walking­server.pid" ]; then
      kill "$(cat /tmp/sleep­walking­server.pid)"
    else
      echo "Error: sleep­walking­server.pid not found."
      exit 1
    fi
    ;;
  *)
    # Display usage statement for invalid arguments
    echo "Usage: $0 start|stop"
    exit 1
    ;;
esac

# Exit with success status
exit 0
