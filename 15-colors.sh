#!/bin.bash

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"
USERID=$(id -u)

if [ $? -ne 0 ]; then
    echo -e "$R ERROR: $N Should run only with sudo privilages"
    exit 1
else
    echo "Sudo permission verified proceeding"
fi

Validate(){
    if [ $1 -ne 0 ]; then
    echo -e "$2 not installed......$G proceedin to install $2 $N"
dnf install nginx -y
else
    echo -e "$2 already installed --- $Y skipping $N"
    echo "Already installed on"
dnf history list $2 | head -3 | tail -1 | awk '{print $7}'
fi
}

dnf list installed nginx
Validate $? "nginx"







