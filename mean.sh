#!/bin/bash

if [[ $# -ne 2 ]]; then
    echo "usage: $0  <column> [file.csv]"
    exit 0
fi

col_idx=$1
file=$2

sum=0
num=0

w_head=$(cut -d "," -f col_idx file)
use_col=$(tail -n +2 w_head)

function find_mean {
# blah blah blah
    }
