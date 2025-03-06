#!/bin/bash

while read -r line; do
    a=$(echo $line | cut -d ' ' -f 1)
    b=$(echo $line | cut -d ' ' -f 2)
    sum=$((a + b))
    echo $sum
done
