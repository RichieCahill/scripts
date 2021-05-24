#!/bin/bash

Sun=3

for i in {1..365}; do 

  First="$(date +%d -d "+$i days")"
  Day="$(date +%A_%m/%d -d "+$i days") "

  if [ $First == 01 ]; then
    echo $(date "+%B(%Y)" -d "+$i days")
    echo " "
    echo " "
  fi

  echo "$Day"

  if [[ "$i" -eq "$Sun" ]]; then
  echo " "
  Sun=$((Sun + 7)) 
  fi

done



