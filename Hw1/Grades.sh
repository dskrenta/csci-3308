#!/bin/bash

file="StudentGrades.txt"

while IFS= read line
do
  IFS=" "
  set $line
  avg=$((($4 + $5 + $6) / 3))
  echo "$avg [$1] $3, $2"
done <"$file"