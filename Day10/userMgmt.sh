#!/bin/bash

# User Management
USER1="user1"
USER2="user2"
PASSWORD="password123"

# Create users
sudo useradd -m -p "$(openssl passwd -1 $PASSWORD)" "$USER1" && echo "User $USER1 created."
sudo useradd -m -p "$(openssl passwd -1 $PASSWORD)" "$USER2" && echo "User $USER2 created."

# Display created usernames
echo "Created Users:"
echo "$USER1"
echo "$USER2"
