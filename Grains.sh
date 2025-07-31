#!/bin/bash

Number=1

case $1 in
    "total") Number=64;;
    [1-9]|[1-5][0-9]|6[0-4]) Number=$1;;
    *) echo "Error: invalid input" >&2; exit 1;;
esac

Number=$((Number - 1))


res=$(awk -v n="$Number" 'BEGIN { printf "%.0f\n", 2^n }')

echo "$res"
