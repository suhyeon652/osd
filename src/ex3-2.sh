#!/bin/bash
while true
do
    read -p "x값 입력(q=quit): " x
    if [ "$x" = "q" ]; then break; fi
    y=$(echo "0.5 * $x * $x" | bc -l)
    echo "y = $y"
done
