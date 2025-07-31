#!/usr/bin/env bash

#Calculate the Hamming distance between two DNA strands.
 #
 #We read DNA using the letters C, A, G and T. Two strands might look like this:
 #
 #GAGCCTACTAACGGGAT
 #CATCGTAATGACGGCCT
 #^ ^ ^  ^ ^    ^^
 #
 #They have 7 differences, and therefore the Hamming distance is 7.




str1=$1
str2=$2

len1=`echo $str1 | wc -m`
len2=`echo $str2 | wc -m`

usage()
{
echo "Usage: hamming.sh <string1> <string2>"
}

[[ $# -ne 2 ]] && usage && exit 2

if [ $len1 -ne $len2 ]; then
        echo "strands must be of equal length" && exit 1
fi

counter=-1

for (( i=0; i<len1; i++ )); do

        if [ ${str1:$i:1} != ${str2:$i:1} ]; then
                let counter+=1
        fi

done

echo $counter