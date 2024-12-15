#!/bin/bash

#Arrays
myArray=( 1 4 54.02 hii "How are you ?" )

echo "All the present values in the array are: ${myArray[*]}"


echo "Hey People ${myArray[4]}"


#Lenth of an array

echo "Lenth of this array is ${#myArray[*]}"



#Range of an Array
echo "Range of this array is: ${myArray[*]:2:2}"


#Adding new Values
myArray+=( 2 8 6.8 5 )
echo "values in my new array are ${myArray[*]}"
