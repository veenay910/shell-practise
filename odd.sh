#!/bin/bash

#odd number 

echo "Enter the value :"

read number

if [ $(($number % 2)) -gt 0 ]; then
    echo "given value is odd number"

else   
    echo "given value is even number"

fi