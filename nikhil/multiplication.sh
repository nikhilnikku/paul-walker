#!/bin/bash
echo "enter a number"
read num
echo "multiplication table is"
for((i=1;i<=10;i++))
do 
m=$((num*i))
echo "$num*$i=$m"
done

