#!/bin/bash
echo "______ADDITION USING PIPES__________"
echo "Enter Number 1"
read num1
echo "Enter Number 2"
read num2
echo -n "the addition of two numbers is "
echo "$num1+$num2"|bc
