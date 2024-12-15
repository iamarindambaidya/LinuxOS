#!/bin/bash

calculator () {
	read -p "Please enter 1st number " num1
	read -p "Please enter 2nd number " num2
	let add=$num1+$num2
	let sub=$num1-$num2
	let mul=$num1*$num2
	let div=$num1/$num2
	echo "The addition of two number is: $add"
	echo "The substraction of two number is: $sub"
	echo "The multiplication of two number is: $mul"
	echo "The divition of two number is: $div"
	
}
calculator
