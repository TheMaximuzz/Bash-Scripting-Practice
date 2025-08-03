#Let's work through an example, with the input "63915".
 #
 #    To form a series, take adjacent digits in the original input.
 #    If you are working with a span of 3, there will be three possible series:
 #        "639"
 #        "391"
 #        "915"
 #    Then we need to calculate the product of each series:
 #        The product of the series "639" is 162 (6 × 3 × 9 = 162)
 #        The product of the series "391" is 27 (3 × 9 × 1 = 27)
 #        The product of the series "915" is 45 (9 × 1 × 5 = 45)
 #    162 is bigger than both 27 and 45, so the largest series product of "63915" is from the series "639". So the answer is 162.


#!/bin/bash

series=$1
span=$2
len=${#series}

if (( span > len )); then
        echo "span must not exceed string length"
        exit 1
fi

if ! [[ "$series" =~ ^[0-9]+$ ]]; then
  echo "input must only contain digits"
  exit 2
fi


[[ $# -ne 2 ]] && echo -e "USAGE: ./Largest-Series-Product.sh X Y \n Where X is a sequence of adjacent digits and Y is how many digits long each series is" && exit 3


if ! [[ "$span" =~ ^[0-9]+$ ]]; then
  echo "span must not be negative"
  exit 4
fi



digits=()
maxMult=0

for (( i=0; i<len; i++ )); do
        digits[i]=${series:i:1}
done

for (( i=0; i<=len-span; i++ )); do

        curr=1

        for (( j=0; j<span; j++ )); do

                curr=$(( curr * digits[i+j] ))

        done

        if (( curr > maxMult )); then
                maxMult=$curr
        fi
done

echo $maxMult