#!/bin/bash
echo "enter main string"
read main
l1=`echo $main | wc -w`
echo "enter sub string"
read sub
n=1
pos=0
while [ $n -le $l1 ]
do
s=0
b=`echo $main -tr -s " " |cut -d " " -f $n`
if [ $sub = $b ]
then
pos=$n
else
pos=0
fi
if [ $pos -ne 0 ]
then
echo "position is $pos"
s=1
fi
n=$((n+1))
done
if [ $s -eq 0 ]
then
echo "sub string not in main"
fi 
