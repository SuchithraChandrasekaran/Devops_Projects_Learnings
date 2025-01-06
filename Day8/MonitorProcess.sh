#!/bin/bash

PROCESS_NAME="my_process"
PROCESS_PATH="./my_process.sh"  # Ensure you use the correct path to the script

# Check if the process is running
if ps aux | grep -w "$PROCESS_NAME" | grep -v grep > /dev/null; then
    echo "$PROCESS_NAME is running."
else
    echo "$PROCESS_NAME is not running. Starting it..."

    # Ensure the script is executable
    if [ ! -x "$PROCESS_PATH" ]; then
        echo "Error: $PROCESS_PATH is not executable or not found."
        exit 1
    fi

    # Start the process
    "$PROCESS_PATH" &
    echo "$PROCESS_NAME started."
fi

