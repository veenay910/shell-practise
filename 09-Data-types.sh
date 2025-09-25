#!/bin/bash

# Everything in shell script consider as string

NUMBER1=100
NUMBER2=200
NAME=DEVOPS

# if you add name in arthematic operations considered it value as 0

echo "SUM=$(($NUMBER1+$NUMBER2+$NAME))"

SUM=$(($NUMBER1+$NUMBER2+$NAME))

echo "sum of two numbers $SUM"

LEADERS=("Putin" "modi" "trump")

echo "all leaders ${LEADERS[@]}"

echo "first leader ${LEADERS[0]}"

echo "second leader ${LEADERS[1]}"

echo "third leader ${LEADERS[2]}"