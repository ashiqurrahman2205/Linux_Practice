#!/bin/bash
echo "Enter a Number"
read NUM
for((i=1;i<=$NUM;i++));
do 
	for((j=1;j<=$i;j++));
	do
		echo -n  "$j "
	done
	echo
done
