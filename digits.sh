#!/bin/bash

sum=0

for num in {1000..2000}; do
    if [[ $num =~ ^[01]+$ ]]; then
	((sum+=$num))
    else
        continue
    fi
    echo $sum;  done

for num in {1000..2000}; do
    number=$num
    mytest=${BASH_REMATCH[1]}
    if [[ $number =~ "(.)(.)(.)(.)" ]]; then
	one=${BASH_REMATCH[1]}
	two=${BASH_REMATCH[2]}
	three=${BASH_REMATCH[3]}
	four=${BASH_REMATCH[4]}
	echo $one
    else
	continue
    fi; done





