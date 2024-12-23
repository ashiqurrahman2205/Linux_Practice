#!/bin/bash
h=$(date +'%H')
if [ $h -ge 5 ] && [ $h -lt 12 ];
then
	echo "Good Morning"
elif [ $h -ge 12 ] && [ $h -lt 14 ];
then
	echo "Good Noon"
elif [ $h -ge 14 ] && [ $h -lt 17 ];
then 
	echo "Good Afternoon"
elif [ $h -ge 17 ] && [ $h -lt 21 ];
then
	echo "Good Evening"
else
	echo "Good Night"
fi
