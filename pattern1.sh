#!/bin/bash
echo "Enter the Number"
read num
counter=1
for((i=1;i<=$num;i++));
do
	for((j=1;j<=$i;j++));
	do
		if [ $counter -le $num ]
		then
			echo -n "$counter "
		else
			break
		fi
		counter=$(($counter+1))
	done
	if [ $counter -le $num ]
	then
		echo
	else 
		break
	fi
done
