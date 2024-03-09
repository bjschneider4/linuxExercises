#!/bin/sh
echo "rm_n.sh" 1>&2

# Assign arguments to variables
dir="$1"
n="$2"

# Remove files larger than <n> bytes
find "$dir" -type f -size +"$n"c -exec rm -f {} +

echo "Files larger than $n bytes in directory '$dir' have been removed."
