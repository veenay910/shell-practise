#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo "Error: Script should be run with sudo previlages"
else
    echo "Sudo permissions validated proceeding to install"
fi

dnf install nginx -y

if [ $? -ne 0 ]; then
    echo "Nginx installed Failed"
else
    echo "Nginx installation success"
fi