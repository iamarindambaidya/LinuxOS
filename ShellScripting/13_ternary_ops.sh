#!/bin/bash

#Ternary Operators

read -p "Enter your age: " age

[[ $age -ge 18 ]] && echo "You are Adult" || echo "You are Minor"
