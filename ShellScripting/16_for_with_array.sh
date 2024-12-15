#!/bin/bash

# for loop with array

myArray=( 2 4 5 babu puchu )

arrLength=${#myArray[*]}

echo "Length of the array is: $arrLength"


for (( i=0; i<arrLength; i++))
do
	echo "Element in the array are: ${myArray[$i]}"
done
