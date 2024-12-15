#!/bin/bash

while read myvar
do
	echo "Values from file is $myvar"
done < names.txt
