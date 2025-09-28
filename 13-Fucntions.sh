#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo "Error: Script should be run with sudo previlages"
fi

dnf install nginxfdsf -y

if [ $? -ne 0 ]; then
    echo "Nginx installed Failed"
fi