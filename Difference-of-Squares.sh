#!/bin/bash

#Find the difference between the square of the sum and the sum of the squares of the first N natural numbers

usage()
{
echo "USAGE:./Difference-of-Squares.sh (square_of_sum / sum_of_squares / difference) N, where N is positive number."
echo "This command will calculate the difference between the square of the sum and the sum of the squares of the first N natural numbers"
}

[[ $# -ne 2 ]] && usage && exit 1

[[ $2 -lt 0 ]] && echo "Use positive number, not $2" && usage && exit 2

if ! [[ $2 =~ ^[0-9]+$ ]]; then
    echo "Use positive number, not $2"
    usage
    exit 3
fi

sum1=0
sum2=0

case $1 in
        "difference")
        for (( i=1; i <= $2; i++ )); do
                let sum1+=i
        done
        let sum1=sum1**2

        for (( i=1; i <= $2; i++ )); do
                let sum2+=i**2
        done

        diff=$(( $sum1-$sum2  ))
        echo "Difference is $diff"
        ;;

        "sum_of_squares")
        for (( i=1; i <= $2; i++ )); do
                let sum2+=i**2
        done
        echo "Sum of squares is $sum2"
        ;;

        "square_of_sum")
        for (( i=1; i <= $2; i++ )); do
                let sum1+=i
        done
        let sum1=sum1**2
        echo "Square of sum is $sum1"
        ;;

esac
