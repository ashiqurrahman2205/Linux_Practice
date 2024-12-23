#!/bin/bash
read h
a=0
arr=();
for ((i=0;i<${#h};i++));
do
	arr[$a]="${h:i:1}"
	let a++;
done

c="${arr[-1]}"

d="${arr[0]}"
for i in "${arr[@]:1:$((${#h}-2))}";
do
	d=$(echo "$d$c$i"|bc)
done
echo $d
