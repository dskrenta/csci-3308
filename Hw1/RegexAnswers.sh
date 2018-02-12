#!/bin/bash
# RegexAnswers.sh, Author: David Skrenta

grep -c -P "\d$" $1 # 15371
grep -c -P "^[^aeiouAEIOU]" $1 # 52331
grep -c -P "^[a-zA-Z]{12}$" $1 # 1257
grep -c -P "^\d{3}-\d{3}-\d{4}$" $1 # 767
grep -c -P "^303-\d{3}-\d{4}$" $1 # 406
grep -c -P "^[aeiouAEIOU].*\d$" $1 # 1571
grep -c -P "^\S*@geocities.com" $1 # 6619
grep -c -P "^[a-mA-M]\w+\.\w+@\S+$" $1 # 334 # NOTE: Results in 333