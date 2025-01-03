#!/bin/bash

# Function to greet a user
greet() {
    echo "Hello, $1!"
}

# Function to add two numbers
add_numbers() {
    local sum=$(( $1 + $2 ))
    echo $sum
}

# Function to check if a number is even or odd
check_even_odd() {
    if (( $1 % 2 == 0 )); then
        echo "$1 is even."
    else
        echo "$1 is odd."
    fi
}

# Recursive function to calculate factorial
factorial() {
    if [ $1 -le 1 ]; then
        echo 1
    else
        local temp=$(( $1 - 1 ))
        local result=$(factorial $temp)
        echo $(( $1 * result ))
    fi
}

# Call functions
greet "Suchithra"
echo "Sum: $(add_numbers 5 10)"
check_even_odd 7
echo "Factorial of 5: $(factorial 5)"
