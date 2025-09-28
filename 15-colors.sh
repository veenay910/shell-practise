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
elif 
    echo "Proceeding to install nginx"
dnf install nginx -y

echo "Already installed, installed on"
dnf history list nginx | head -3 | tail -1 | awk '{print $7}'
fi




