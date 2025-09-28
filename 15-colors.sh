#!/bin.bash

USERID=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

if [ $? -ne 0 ]; then
    echo -e "$R ERROR: $N Should run only with sudo privilages"
    exit 1
else
    echo "Sudo permission verified proceeding"
fi

dnf list installed nginx
if [ $? -ne 0 ]; then
    echo "Nginx not installed......$G proceedin to install nginx $N"
dnf install nginx -y
else
    echo "nginx already installed --- $Y skipping $N"
    echo "Already installed on "
dnf history list nginx | head -3 | tail -1 | awk '{print $7}'
fi




