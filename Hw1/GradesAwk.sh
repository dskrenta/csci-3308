#!/bin/bash
# GradesAwk.sh, Author: David Skrenta

awk 'NR>1 {print "[" $1 "] " $3 ", " $2 " " int(($4+$5+$6)/3)}' StudentGrades.txt | sort -d -k 3