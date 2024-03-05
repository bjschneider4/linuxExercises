#!/bin/sh
echo "hello" 1>&2
dir=$1
n=$2

for file in $(find $dir -type f -size +$n)
do
    rm $file
done

