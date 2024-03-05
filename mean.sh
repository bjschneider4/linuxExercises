#!/bin/bash

if [[ $# -ne 2 ]]; then
    echo "usage: $0  <column> [file.csv]"
    exit 0
fi

col_idx=$1
file=$2

col=$(cut -d "," -f $col_idx $file | tail -n +2)

echo $col | sed -e 's/ /\n/g' | { sum=0; num=0; mean=0;  while read col; do sum=$(($sum + $col));  num=$(($num + 1)); done; mean=$(($(echo "scale=6; $sum/$num"| bc );)); echo $mean; }
