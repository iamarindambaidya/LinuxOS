#!/bin/bash

#Math Calculations

x=20
y=5

let mul=$x*$y

echo "Multiplication of 20 and 5 is: $mul"

let add=$x+$y

echo "Addition of 20 and 5 is: $add"

#New Arth technique using (())
echo "Substraction of 5 from 20 is: $(($x-$y))"
