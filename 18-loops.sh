#!/bin/bash

USERID=$(id -u)
echo "print $USERID "
#color code for shell script
R='\033[0;31m'
G='\033[0;32m'
B='\033[0;34m'
N='\033[0m'

LOG_FOLDER="/var/log/shell-script"
SCRIPT_NAME=$( echo $0 )
LOG_FILE="$LOG_FOLDER/$SCRIPT_NAME.log"



dnf list installed nginx
if [ $? -ne 0 ]; then
    echo -e "Ngnix not exit ...Proceeding to install $G Nginx $N "
    dnf install nginx -y
else 
    echo -e "Ngnix already installed ...$B skipping $N "

fi



