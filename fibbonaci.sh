#!/bin/bash
read -p "Enter the limit for the series: " limit
n1=0
n2=1
n3=0
echo -e "$n1\n$n2"
while [ $n3 -lt $limit ];
do
	n3=$(echo "$n1+$n2"|bc)
	if [ $n3 -lt $limit ];
	then
		echo "$n3"
		n1=$n2
		n2=$n3
	else
		break
	fi
done

