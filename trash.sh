#!/bin/bash

if [ ! -d "Trash" ]; then
	mkdir -p "Trash"
	if [ -f $input ]; then		
		if [ -f 'bomb.o' ]; then		
			mv bomb.o defuseMe.o defuseTheBomb.o Trash/
		fi
		if [ -f 'program3' ]; then
			mv program3 Trash/
		fi
		cd Trash
		for file in *; do
			systemtime=$(date +"%H%M")
			filetime=$(date -r $file +"%H%M")
			diff= $(($systemtime-$filetime))
		
			if [ $diff -gt 60 ]; then
				echo $file	
				rm $file
			fi
		done
	fi	
elif [ -d "Trash" ]; then
	echo "Exists"
	if [ -f $input ]; then		
		if [ -f 'bomb.o' ]; then		
			mv bomb.o defuseMe.o defuseTheBomb Trash/
		fi
		if [ -f 'program3' ]; then
			mv program3 Trash/
		fi	
		cd Trash
		for file in *; do
			systemtime=$(date +"%H%M")
			filetime=$(date -r $file +"%H%M")
			diff=$(($systemtime-$filetime))

			if [ $diff -gt 60 ]; then
				echo $file
				rm $file
			fi
		done
	fi
fi


