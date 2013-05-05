#!/bin/bash

i3status | while read line
do
  if [ -e ~/.westpac-balance ]; then
    line=`cat ~/.westpac-balance <(echo ' | '$line)`
  fi
  echo $line
done
