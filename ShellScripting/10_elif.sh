#!/bin/bash

read -p "Put your marks: " marks

if [[ $marks -ge 80 ]]
then
	echo "Congratulation got 1st Div. ;)"
elif [[ $marks -ge 60 ]]
then
	echo "Congratulation you got 2nd Div. :)"
elif [[ $marks -ge 40 ]]
then
	echo "You got 3rd Div."

else
	echo "Damm..! You Failed :("
fi

