#!/bin/bash
if [ $# -ne 3 ];
then 
	echo "Error:No of Arguments not specfied"
fi
start=$1
next=$2
file=$3

end=$(($1+$2))
sed -n "${start},${end}"p "$file"
