#!/bin/bash

cat Property_Tax_Roll.csv | grep "MADISON SCHOOLS" | cut -d',' -f7 | {
    sum=0
    count=0
    while read n; do
        sum=$(($sum + $n))
        count=$(($count + 1))
    done
    
    if [ $count -gt 0 ]; then
        echo "Total Sum: $sum"
        average=$(echo "scale=2; $sum / $count" | bc)
        echo "Average Total: $average"
    else
        echo "No records found for MADISON SCHOOLS."
    fi
}
