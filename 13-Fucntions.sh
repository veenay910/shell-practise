#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo "Error: Script should be run with sudo previlages"
    exit 1
else
    echo "Sudo permissions validated proceeding to install"
fi

dnf install nginx -y

if [ $? -ne 0 ]; then
    echo "Nginx installed Failed"
    exit 1
else
    echo "Nginx installation success"
fi
