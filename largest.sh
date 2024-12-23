#!/bin/bash
if [ $# -eq 0 ];
then
	echo "No Arguments Passed"
else
	larg=$1
	for i in "$@"; do
		if ! [[ $i =~ ^-?[0-9]+$ ]];
		then
			echo "Error:Not an Integer"
			exit 1
		fi
		if [ $i -gt $larg ];
		then
			$larg=$i
		fi
	done
	echo "largest number is $larg"
fi

