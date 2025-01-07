#!/bin/bash

STRING="Learn Shell Scripting"

# Convert to uppercase
UPPERCASE=$(echo "$STRING" | tr '[:lower:]' '[:upper:]')
echo "Uppercase: $UPPERCASE"

# Convert to lowercase
LOWERCASE=$(echo "$STRING" | tr '[:upper:]' '[:lower:]')
echo "Lowercase: $LOWERCASE"
