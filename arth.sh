#!/bin/bash

x=10
y=5
echo "x=10, y=5"  
echo "Addition of x and y"  
echo $(( $x + $y ))


# marks grading

echo  "enter the marks:"
read NUM

if [ $NUM -ge 75 ]; then
    echo "Grade A"

else [ $NUM -lt 75 ]; then
    echo "Grade B"


fi