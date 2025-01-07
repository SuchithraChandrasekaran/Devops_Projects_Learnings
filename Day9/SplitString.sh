#!/bin/bash

STRING="Red, green, blue"
IFS=',' # Set delimiter
read -ra ADDR <<< "$STRING" # Split into array

echo "Colors:"
for i in "${ADDR[@]}"; do
    echo "- $i"
done
