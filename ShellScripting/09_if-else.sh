#!/bin/bash

read -p "Put your marks: " marks

if [[ $marks -gt 45 ]]
then
	echo "Congratulation you are passed ;)"
else
	echo "Damm..! You Failed :("
fi

