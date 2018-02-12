#!/bin/bash
# GradesAwk.sh, Author: David Skrenta

awk 'NR>1 {print int(($4+$5+$6)/3) " [" $1 "] " $3 ", " $2}' $1 | sort -d -k 3