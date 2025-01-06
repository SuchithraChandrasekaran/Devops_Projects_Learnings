#!/bin/bash

# Process path to kill
PROCESS_PATH="/usr/bin/sleep"

# Get the PIDs of the process by matching the exact process path
pids=$(ps aux | grep "$PROCESS_PATH" | grep -v "grep" | awk '{print $1}')

# Check if we found any PIDs
if [ -n "$pids" ]; then
    # Kill the process
    echo "Killing process: $PROCESS_PATH with PID(s): $pids"
    kill $pids
    # Confirm the kill
    if [ $? -eq 0 ]; then
        echo "Process killed successfully."
    else
        echo "Failed to kill process."
    fi
else
    echo "No running process found with path: $PROCESS_PATH"
fi

