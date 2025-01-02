#!/bin/bash
echo "Enter file name: "
read file

# Corrected 'if' syntax with spaces
if [ -f "$file" ]; then
    echo "File exists"
else
    echo "File doesn't exist."
fi

