#!/bin/bash

sed 's/4/a/g' cryptic.txt | sed 's/5/s/g' | sed 's/3/e/g' | sed 's/0/o/g' | sed 's/7/t/g' | sed 's/1/i/g'

# OR

sed 's/3/e/g; s/0/o/g; s/5/s/g; s/4/a/g; s/5/s/g; s/7/t/g; s/1/i/g;' cryptic.txt