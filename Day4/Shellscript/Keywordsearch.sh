#!/bin/bash

echo "CPP is versatile language"

# Prompt for file name
echo "Enter the file name:"
read file

# Check if file exists
if [ ! -f "$file" ]; then
    echo "Error: File does not exist!"
    exit 1
fi

# Prompt for keyword
echo "Enter the keyword to search:"
read keyword

# Validate keyword
if [ -z "$keyword" ]; then
    echo "Error: Keyword cannot be empty!"
    exit 1
fi

# Search for keyword
echo "Searching for '$keyword' in '$file'..."
grep -i "$keyword" "$file"

# Check if grep found matches
if [ $? -ne 0 ]; then
    echo "No matches found."
else
    echo "Search complete."
fi

