#!/bin/bash
arr=("apple" "banana" "cherry")
echo "First fruit: ${arr[0]}"
echo "All fruits: ${arr[@]}"


### iterating over an array ###
arr=("red" "green" "blue")
for color in "${arr[@]}"; do
    echo "Color: $color"
done

### adding and removing elements

arr=(1 2 3)
arr+=(4)
echo "Array after adding: ${arr[@]}"
unset arr[1]
echo "Array after removing index 1: ${arr[@]}"

### Associative arrays

declare -A user
user[name]="Suchithra"
user[lang]="c++"
echo "Name: ${user[name]}"
echo "Lang: ${user[lang]}"

