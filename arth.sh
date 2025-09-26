#!/bin/bash

x=10
y=5
echo "x=10, y=5"  
echo "Addition of x and y"  
echo $(( $x + $y ))


# marks grading

echo  "enter the marks:"
read NUM

if [ $NUM -ge 90 ]; then
    echo "Grade A"

elif [ $NUM -ge 70 ]; then
    echo "Grade B"

elif [ $NUM -ge 50 ]; then
    echo "Grade C"

elif [ $NUM -ge 35 ]; then
    echo "Grade D"

else
    echo "fail"


fi