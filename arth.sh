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

elif [ $NUM -le 75 ]; then
    echo "Grade B"

elif [ $NUM -le 55 ]; then
    echo "Grade C"

elif [ $NUM -le 35 ]; then
    echo "Grade D"

else
    echo "fail"


fi