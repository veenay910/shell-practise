#!/bin/bash

echo "All variables passed to the script = $@"

echo "and"

echo "All variables passed to the script = $*"

echo "script name= $0"

echo "hostname =$HOSTNAME"

echo "current working path = $PWD"

echo "calendr = $CAL"

echo "PID of the current script $$"

echo " Number of arugmentes passed $#"

echo "who is running this $USER "

sleep 10 &

echo " PID of last coammnd in backgorund is $!"

echo " status of the command $?"

