#!/bin/bash

#grep -rli '00-start' * | xargs -i@ sed -i 's/00-start/getting-started/g' @
#grep -rli '01-basicr' * | xargs -i@ sed -i 's/01-basicr/basic-r/g' @
#grep -rli '02-data' * | xargs -i@ sed -i 's/02-data/working-with-data/g' @
#grep -rli '02-data' * | xargs -i@ sed -i 's/02-data/working-with-data/g' @
#grep -rli '03-plot' * | xargs -i@ sed -i 's/03-plot/plotting/g' @
#grep -rli '04-stats1' * | xargs -i@ sed -i 's/04-stats1/stats/g' @

# loop through the first set of values 
#for i in $(seq -f "%02g" 0 4)
#do 
#    for j in $(seq -f "%02g" 0 11)
#    do
        #grep -rli '$i-$j-' * | xargs -i@ sed -i 's/$i-$j-//g' @
#        find rename 's/^$i-$j-//' $i-$j-*
#    done
#done

grep -rli '00-landingpage' * | xargs -i@ sed -i 's/00-landingpage/getting-started/g' @
grep -rli '01-landingpage' * | xargs -i@ sed -i 's/01-landingpage/basic-r/g' @
grep -rli '02-landingpage' * | xargs -i@ sed -i 's/02-landingpage/working-with-data/g' @
grep -rli '03-landingpage' * | xargs -i@ sed -i 's/03-landingpage/plotting/g' @
grep -rli '04-landingpage' * | xargs -i@ sed -i 's/04-landingpage/statistics/g' @
grep -rli '05-landingpage' * | xargs -i@ sed -i 's/05-landingpage/simulations/g' @
grep -rli '06-landingpage' * | xargs -i@ sed -i 's/06-landingpage/programming/g' @
grep -rli '07-landingpage' * | xargs -i@ sed -i 's/07-landingpage/adv-stats/g' @
