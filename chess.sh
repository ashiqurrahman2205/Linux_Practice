#!/bin/bash
k=0
for ((i=0;i<8;i++));
do
	for((j=0;j<4;j++));
	do
		if [ $k -eq 0 ];
		then
			echo -e -n "  "  
			echo -e -n "\e[47;30m  \e[0m"
		else
                        echo -e -n "\e[47;30m  \e[0m"
			echo -e -n "  "                      	
			
		fi
	done
	k=$(echo "1-$k"|bc)
	echo
done

