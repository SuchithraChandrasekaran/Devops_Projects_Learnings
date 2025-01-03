#!/bin/bash
### for loop ###
for file in $(ls *.txt); do
    echo "Processing file: $file"
done
### While loop ###
counter=1
while [ $counter -le 5 ]; do
    echo "Counter: $counter"
    counter=$((counter + 1))
done
### until loop ###
count=1
until [ $count -gt 5 ]; do
    echo "Count: $count"
    count=$((count + 1))
done

### nested for loop ###
for i in {1..3}; do
    for j in {1..3}; do
        echo "i=$i, j=$j"
    done
done
