#!/bin/bash

#This code determines whether a number is an Armstrong number.

usage()
{
echo "USAGE: ./Armstrong-Numbers.sh N, where N is positive number. This code determines whether a number is an Armstrong number."
}

[[ $# -ne 1 ]] && usage && exit 1

[[ $1 -lt 0 ]] && echo "Use positive number, not $1" && usage && exit 2

if ! [[ $1 =~ ^[0-9]+$ ]]; then
    echo "Use positive number, not $1"
    usage
    exit 3
fi


digit=$1
power=0
while [ $digit -ne 0 ]; do
        let digit=digit/10
        let power+=1
done

digit=$1
summa=0
for (( i=0; i< $power; i++ )); do
        let summa+=(digit%10)**power
        let digit=digit/10
done

if [[ $1 -ne summa ]]; then
        echo "false"
else echo "true"
fi