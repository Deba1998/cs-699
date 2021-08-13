#!/bin/bash
#add your logic here

sum=0
count=0
for number in $@
do 
  sum=$(($sum+$number*$number*$number))
  count=$(($count+1))
done
echo $count
echo $sum
