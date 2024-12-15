#!/bin/bash

# For implementing in file...
FILE="/home/kali/myscripts/names.txt"

for i in $(cat $FILE)
do
	echo $i
done
