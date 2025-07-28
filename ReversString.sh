#!/bin/bash

#This script make reversed strings

usage()
{
echo "USAGE: ./ReverseScript.sh S, where S is string. Reverse string"
}

[[ $# -ne 1 ]] && usage && exit 1

res=""

reverse() {
str=$1
len=`echo str | wc -m`
echo "Total len: $len"
for (( i=len; i>=0; i-- )); do
        res+="${str:$i:1}"
done
