#!/bin.bash

UID=$(id -u)

if [ $UID -ne 0 ]; then
    echo "ERROR: Should run only with sudo privilages"
    exit 1
fi

dnf list installed nginx
if [ $? -ne 0 ]; then
    echo "Nginx not installed"
else
echo "Already installed"
fi




