#!/bin/bash

awk 'NR>1 {print "[" $1 "] " $3 ", " $2 " " ($4+$5+$6)/3}' StudentGrades.txt