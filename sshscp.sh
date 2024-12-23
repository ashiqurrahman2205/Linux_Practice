#!/bin/bash
function menu(){
	echo  Menu
	echo 1.SSH
	echo 2.SCP
	echo "Choose the option"
	read option
	case $option in 
		1)SSH;;
		2)SCP;;
		*)echo "please choose a valid option";;
	esac
}
function SSH(){
	echo "-------SSH-------"
	echo "Please enter the username"
	read usern
	echo "Please Enter the ip address"
	read ipad
	ssh $usern@$ipad
	
}
function SCP(){
        echo "-------SCP-------"
        echo "Please enter the username"
        read usern
        echo "Please Enter the ip address"
        read ipad
	echo "type of transfer"
	echo "1)remote to local"
	echo "2)local to remote"
	read opt1
	case $opt1 in
		2)echo "enter source file name"
		  read source
		  echo "enter destination path"
		  read destination
		  scp $source $usern@$ipad:$destination;;
		1)echo "enter source file name"
                  read source
                  echo "enter destination path"
                  read destination
		  scp $usern@$ipad:$source $destination;;
	esac
}
menu
