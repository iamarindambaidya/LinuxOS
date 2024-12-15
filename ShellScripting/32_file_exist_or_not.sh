#!/bin/bash

#Checking, if file exits?
FILEPATH="/home/kali/myscripts/test.csv"

if [[ -f $FILEPATH ]]
then
	echo "File Exist.."
else
	echo "File not Exist!.."
	exit 1
fi


#Operation, if file dont exist
FPATH="/home/kali/myscripts/test1.csv"
if [[ -f $FPATH ]]
then
	echo "File exist.."
else
	echo "File is not present."
	echo "Creating file now..."
	touch $FPATH
fi
