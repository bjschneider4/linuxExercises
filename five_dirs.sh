#!/bin/bash
mkdir five

for i in {1..5}; do
    dir="five/dir$i"
    mkdir -p "$dir"
    # echo $i >> "$dir/file$i"
    for ((j=1; j <= 4; j++))
    do
	file="$dir/file$j"
	for ((k=1; k<=$j;k++))
	do
	    echo $j >> "$file"
	done
    done
done
