#!/bin/bash

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"
USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo -e "Please run with $R sudo $N "
    exit 1
else
    echo -e "Sudo permissions validated $G PROCEEDING $N "
fi

validate(){
if [ $1 -ne  0 ]; then
    echo "$2 not exist, Proceeding to install $2"
    dnf install $2 -y
    else 
    echo "$2 already exist....Skipping"
fi  
}

dnf list installed nginx

validate $? "nginx"

dnf list installed mysql
 validate $? "mysql"

dnf list installed python3
validate $? "python3"

