#!/bin/bash

echo "Enter your choices"
echo "a for print date"
echo "b for Scripts list"
echo "c for current location"

read choice

case $choice in
	a)
		echo "Today is -- "
		date
		echo "ending..."
		;;
	b)ls;;
	c)pwd;;
	*)echo "Enter correct option"
esac
