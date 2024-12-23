#!/bin/bash
echo "Enter number to reverse"
read num
renum=$num
rnum=0
while [ $num -gt 0 ]; do
	d=$(echo "$num%10"|bc)
	rnum=$(echo "$rnum*10+$d"|bc)
	num=$(echo "$num/10"|bc)
done
echo "The reverse of number $renum is $rnum"
