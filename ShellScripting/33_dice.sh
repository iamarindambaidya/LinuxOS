#!/bin/bash

# Generating a Random number b/w 1-6
# Dice Game

NO=$(( $RANDOM%6 + 1 ))
echo "Number is $NO"
