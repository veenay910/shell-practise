#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo "Error: Script should be run with sudo previlages"
fi

dnf install nginx -y

if [ $? -eq 0 ]; then
    echo "Nginx installed successfully"
fi