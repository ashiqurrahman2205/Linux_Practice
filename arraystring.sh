#!/bin/bash
if [ $# == 0 ];
then 
	echo "Enter the strings $0"
fi
for i in $@;
do
	echo "the length of $i is ${#i}"
done
