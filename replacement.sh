#!/bin/bash

grep -rli '01-basicr' * | xargs -i@ sed -i 's/01-basicr/basic-r/g' @
grep -rli '00-start' * | xargs -i@ sed -i 's/00-start/getting-started/g' @