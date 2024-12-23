#!/bin/bash
echo  "Enter the array of numbers to sort" 
read -a arr
echo -n "Before Sorting: "
echo "${arr[@]}"
for  ((i=${#arr[@]};i>=0;i--));
do
	c=0
	for ((j=0;j<i-1;j++));
	do
		k=$(expr $j+1)
		if [ ${arr[j]} -gt ${arr[k]} ]
		then
			temp=${arr[j]}
			arr[j]=${arr[k]}
			arr[k]=$temp
			c=1
		fi
	done
	if [ $c -eq 0 ]
	then
		break
	fi
done
echo -n "After Sorting: "
echo "${arr[@]}"
