#!/bin/bash

declare -A myArray

myArray=( [name]=Arindam [age]=26 [city]=kolkata)


echo "My name is: ${myArray[name]}"
echo "My age is: ${myArray[age]}"
echo "My city is: ${myArray[city]}"
