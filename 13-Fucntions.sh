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

VALIDATE(){
    if [ $1 -ne 0 ]; then
        echo "$2 installed Failed"
        exit 1
    else
        echo "$2 installation success"
    fi

}



dnf install nginx -y
VALIDATE $? nginx

dnf install mysql -y
VALIDATE $? mysql

dnf install python3 -y
VALIDATE $? python3

