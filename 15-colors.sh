#!/bin.bash

USERID=$(id -u)

if [ $? -ne 0 ]; then
    echo "ERROR: Should run only with sudo privilages"
    exit 1
else
    echo "Sudo permission verified proceeding"
fi

dnf list installed nginx
if [ $? -ne 0 ]; then
    echo "Nginx not installed"
elif [ $? -eq 0 ]; then
    echo "nginx already installed --- skipping"
    echo "Already installed on "
dnf history list nginx | head -3 | tail -1 | awk '{print $7}'
else
dnf install nginx -y
fi




