#!/bin/bash

################################################################################
# Log Archive Tool
# ----------------------------------------
# This script compresses the contents of a specified log directory into a
# timestamped .tar.gz file and stores it in ~/log_archives/. It also logs
# each archive event to a text file.
################################################################################

# Step 1: Check if a directory argument is provided
if [ -z "$1" ]; then
  echo "Usage: $0 <log-directory>"
  echo "Please provide the path to the log directory you want to archive."
  exit 1
fi

# Step 2: Validate that the provided path is actually a directory
LOG_DIR="$1"
if [ ! -d "$LOG_DIR" ]; then
  echo "Error: '$LOG_DIR' is not a valid directory."
  exit 1
fi

# Step 3: Define the archive directory
ARCHIVE_DIR="$HOME/log_archives"
mkdir -p "$ARCHIVE_DIR"  # Create if it doesn't exist

# Step 4: Create a timestamp for the archive filename
TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")

# Step 5: Define the archive filename and paths
ARCHIVE_NAME="logs_$TIMESTAMP.tar.gz"
ARCHIVE_PATH="$ARCHIVE_DIR/$ARCHIVE_NAME"
LOG_FILE="$ARCHIVE_DIR/archive_log.txt"

# Step 6: Compress the contents of the log directory
tar -czf "$ARCHIVE_PATH" -C "$LOG_DIR" .

# Step 7: Confirm success or handle errors
if [ $? -eq 0 ]; then
  echo "Archive created: $ARCHIVE_PATH"

  # Step 8: Log archive operation
  echo "[$TIMESTAMP] Archived $LOG_DIR to $ARCHIVE_PATH" >> "$LOG_FILE"
  echo "Archive logged in: $LOG_FILE"
else
  echo "Failed to create archive. Please check permissions or disk space."
  exit 1
fi
