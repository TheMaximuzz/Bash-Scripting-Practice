#!/bin/bash

#Your task is to determine what you will say as you give away the extra cookie.
#If you know the person's name (e.g. if they're named Do-yun), then you will say:
#One for Do-yun, one for me.
#If you don't know the person's name, you will say you instead.
#One for you, one for me.

usage()
{
echo "USAGE: ./TwoFer.sh S, where S is sring item(s) (name)"
}

name=$1

[[ "$name" =~ ^[0-9]+$ ]] && usage && exit 1


if [[ $# -gt 1 ]]; then
        echo "One for $name, one for me."
elif [ $# -ne 1 ]; then
        echo "One for you, one for me."
else echo "One for $name, one for me."
fi
