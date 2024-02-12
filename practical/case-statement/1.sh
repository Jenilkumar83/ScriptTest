#!/bin/bash

# Check if the correct number of arguments is provided
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 start|stop"
    exit 1
fi

case "$1" in
    start)
        # Check if the sleep-walking-server process is already running
        if [ -e /tmp/sleep-walking-server.pid ]; then
            echo "sleep-walking-server is already running."
            exit 1
        fi

        # Start the sleep-walking-server in the background and save its PID
        /tmp/sleep-walking-server &
        echo $! > /tmp/sleep-walking-server.pid
        echo "sleep-walking-server started."
        ;;

    stop)
        # Check if the PID file exists
        if [ ! -e /tmp/sleep-walking-server.pid ]; then
            echo "sleep-walking-server is not running."
            exit 1
        fi

        # Stop the sleep-walking-server using the saved PID
        kill "$(cat /tmp/sleep-walking-server.pid)"
        rm /tmp/sleep-walking-server.pid
        echo "sleep-walking-server stopped."
        ;;

    *)
        # Display usage statement for invalid arguments
        echo "Usage: $0 start|stop"
        exit 1
        ;;
esac

exit 0

