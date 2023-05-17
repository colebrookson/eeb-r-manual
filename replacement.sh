#!/bin/bash

grep -rli '00-start' * | xargs -i@ sed -i 's/00-start/getting-started/g' @
grep -rli '01-basicr' * | xargs -i@ sed -i 's/01-basicr/basic-r/g' @
grep -rli '02-data' * | xargs -i@ sed -i 's/02-data/working-with-data/g' @
grep -rli '02-data' * | xargs -i@ sed -i 's/02-data/working-with-data/g' @
grep -rli '03-plot' * | xargs -i@ sed -i 's/03-plot/plotting/g' @
grep -rli '04-stats1' * | xargs -i@ sed -i 's/04-stats1/stats/g' @

# loop through the first set of values 
for i in $(seq -f "%02g" 0 4)
do 
    for j in $(seq -f "%02g" 0 10)
    do
        grep -rli '$i-$j-' * | xargs -i@ sed -i 's/$i-$j-//g' @
    done
done