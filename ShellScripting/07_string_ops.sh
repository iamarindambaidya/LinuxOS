#!/bin/bash

myVar="This is a string"

newVar=${#myVar}

echo "Length of my variable is: $newVar"


echo "Upper case is: --- ${myVar^^}"
echo "Lower case is: --- ${myVar,,}"


#Replacing word
myNewVar=${myVar/string/example of string}

echo "Updated content is: --- $myNewVar"



#Scile of a string
echo "A small part of this string is: ${myVar:10:6}"
