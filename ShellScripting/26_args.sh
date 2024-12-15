#!/bin/bash

#To enable Debugging mode
set -x


if [[ $# -eq 0 ]]
then
	echo "There is no Arguments"
	exit
fi


# To access arguments

echo "First argument is: $1"
echo "Second argument is: $2"

echo "All the arguments are: $@"
echo "Number of arguments are: $#"


# Getting arguments using for loop
for filename in $@
do
	echo "Copping file name: $filename"
done

