#!/bin/bash
echo "____Calculator____"
echo "enter The operator to perform"
echo "+ - * / %"
read op
read -p "Enter num1:" num1
read -p "Enter num2:" num2
echo "$num1 $op $num2"|bc
