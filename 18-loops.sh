#!/bin/bash

USERID=$(id -u)
echo "print $USERID "
#color code for shell script
R='\033[0;31m'
G='\033[0;32m'
B='\033[0;34m'
N='\033[0m'

dnf list installed nginx
if [ $? -ne 0 ]; then
    echo "Ngnix not exit ...Proceeding to install $G Nginx $N "
    dnf install nginx -y
else 
    echo -e "Ngnix already installed ...$B skipping $N "

fi



