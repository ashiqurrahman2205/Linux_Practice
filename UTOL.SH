#!/bin/bash
echo "Enter File Name to convert its case"
read filename
if [ ! -f $filename ];
then 
	echo "Error:File Does not exist"
	exit 1
fi
echo "Choose conversion:"
echo "1. Lower to Upper"
echo "2. Upper to Lower"
read -p "Enter your choice (1 or 2): " choice
case $choice in
	1)echo "Converting lower to upper"
	  cat $filename | tr 'a-z' 'A-Z';;
	2)echo "Converting upper to lower"  
          cat $filename | tr 'A-Z' 'a-z';;
	*)echo "Please  enter a valid input"
	  exit 1;;
esac



