#!/bin/bash
# RegexAnswers.sh, Author: David Skrenta

grep -c -P "\d$" HW1_Data.txt # 15371
grep -c -P "^[^aeiouAEIOU]" HW1_Data.txt # 52331
grep -c -P "^[a-zA-Z]{12}$" HW1_Data.txt # 1257
grep -c -P "^\d{3}-\d{3}-\d{4}$" HW1_Data.txt # 767
grep -c -P "^303-\d{3}-\d{4}$" HW1_Data.txt # 406
grep -c -P "^[aeiouAEIOU].*\d$" HW1_Data.txt # 1571
grep -c -P "^\S*@geocities.com" HW1_Data.txt # 6619
grep -c -P "^[a-mA-M]\w*.\w*@\w*.com$" HW1_Data.txt # 334