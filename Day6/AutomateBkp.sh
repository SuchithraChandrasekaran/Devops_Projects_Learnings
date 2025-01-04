#!/bin/bash
source_dir="/c/Users/suchi/125DaysDevops/Day6"
dest_dir="/c/Users/suchi/"
timestamp=$(date +"%Y%m%d%H%M%S")
backup_file="$dest_dir/backup_$timestamp.tar.gz"
tar -czf "$backup_file" "$source_dir"
echo "Backup created: $backup_file"
