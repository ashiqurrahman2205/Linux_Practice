#!/bin/bash
read -p "Enter filename" filename
echo "Before removing empty lines"
cat $filename
echo "After Removing empty lines"
sed -i "/^$/d" $filename
cat $filename
