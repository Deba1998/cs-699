#!/bin/bash
> output.txt
mapfile -t list < $1
touch ot.txt
for i in ${list[@]}
do
  grep -rn $i $2 |awk -F':' '{print "path: " $1 " line no.: " $2 " line: " $3}'>>ot.txt
done

sort -t ' ' -k2,2d -k5,5g ot.txt>output.txt
rm ot.txt

