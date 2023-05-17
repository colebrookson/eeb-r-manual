#!/bin/bash

for i in $(seq -f "%02g" 0 4)
do 
    for j in $(seq -f "%02g" 0 11)
    do
        var="$i-$j-"
        for file in $(find . -not -path '*/.*')
        do
            if [[ "$file" == *"$var"* ]]
            then
                mv "$file" "${file/$i-$j-/}"
            fi
        done  
    done
done
