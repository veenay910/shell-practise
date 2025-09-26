#!/bin/bash


echo "enter the value"

read NUMBER

if [ $(($NUMBER % 2)) -eq 0 ]; then

    echo "Given number is even number"

else 
    echo "Given number is odd"
fi