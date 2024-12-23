#!/bin/bash
read -p "Enter the limit for fibonacci" limit
n1=0
n2=1
while [ $n2 -lt $limit ];
do
	temp=$(echo "$n2+$n1"|bc)
	n1=$n2
	n2=$temp
done
echo  "$n1"

