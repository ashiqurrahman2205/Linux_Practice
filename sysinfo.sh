#!/bin/bash

# Currently logged users
echo "Currently logged users:"
who

# Your shell directory
echo -e "\nYour shell directory:"
echo $SHELL

# Home directory
echo -e "\nHome directory:"
echo $HOME

# OS name and version
echo -e "\nOS name and version:"
uname -a

# Current working directory
echo -e "\nCurrent working directory:"
pwd

# Number of users logged in
echo -e "\nNumber of users logged in:"
who | wc -l

# Show all available shells in your system
echo -e "\nAvailable shells:"
cat /etc/shells

# Hard disk information
echo -e "\nHard disk information:"
lsblk

# CPU information
echo -e "\nCPU information:"
cat /proc/cpuinfo | grep "model name" | uniq

# Memory information
echo -e "\nMemory information:"
free -h

# File system information
echo -e "\nFile system information:"
df -h

# Currently running processes
echo -e "\nCurrently running processes:"
ps -aux
