#!/bin/bash

#CPSC457-SAJID CHOUDHRY-10063503-T02

find  -name "*$1" -type f -printf '%p %s\n'|sort -nrk2|head -n $2\
|awk '{print $1,$2; x += $2} END {print "Total Size: " x}'
