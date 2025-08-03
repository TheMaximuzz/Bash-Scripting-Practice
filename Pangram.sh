#Your task is to figure out if a sentence is a pangram.
 #
 #A pangram is a sentence using every letter of the alphabet at least once. It is case insensitive, so it doesn't matter if a letter is lower-case (e.g. k) or upper-case (e.g. K).
 #
 #For this exercise, a sentence is a pangram if it contains each of the 26 letters in the English alphabet.

#!/bin/bash

low=$(echo "$1" | tr '[:upper:]' '[:lower:]' | tr -cd 'a-z')

count=0


for x in {a..z}; do
        if echo "$low" | grep -q $x; then
        let count+=1
        fi
done

if (( count == 26 )); then
        echo "true";
else
        echo "false";
fi
