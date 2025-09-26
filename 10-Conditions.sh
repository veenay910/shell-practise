#!/bin/bash

# conditions

#    if it is raining
#       take umberall
#   else 
#        take sunglasses
#
#   General if else condition is as bwlow
#    ! means negative
#
#    if (expression){
#            these statements if expression is true
#    }
#    else (expression){
#            these statement if expression is false
#    }

# -gt   -eq -ne

NUMBER=$1

if [ $NUMBER -gt 10 ]; then
	echo " given value is >10"
else
    echo "given value is <10"

fi
