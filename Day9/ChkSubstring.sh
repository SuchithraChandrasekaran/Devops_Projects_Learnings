#!/bin/bash

STRING="Welcome to Linux scripting"
SUBSTRING="Linux"

if [[ $STRING == *"$SUBSTRING"* ]]; then
    echo "The string contains '$SUBSTRING'."
else
    echo "The string does not contain '$SUBSTRING'."
fi
