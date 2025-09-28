#!/bin/bash
# Validation
# Function : For repetative task


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

dnf install mysql -y
if [ $? -ne 0 ]; then
    echo "mysql installed Failed"
    exit 1
else
    echo "mysql installation success"
fi

dnf install python3 -y
if [ $? -ne 0 ]; then
    echo "python3 installed Failed"
    exit 1
else
    echo "python3 installation success"
fi
