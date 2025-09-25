#!/bin/bash

echo "All variables passed to the script = $@"

echo "and"

echo "All variables passed to the script = $*"

echo "script name= $0"

echo "hostname =$HOSTNAME"

echo "current working path = $PWD"

echo "calendr = $CAL"

echo "Number of arguments passed in the script $$"

echo " PID of current shell instance is $$"

echo "who is running this $USER"

sleep 10 &

echo " PID of last coammnd in backgorund is $!"

