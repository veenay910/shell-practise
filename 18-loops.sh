#!/bin/bash

USERID=$(id -u)
echo "print $USERID "
#color code for shell script
R='\033[0;31m'
G='\033[0;32m'
B='\033[0;34m'
N='\033[0m'

LOG_FOLDER="/var/log/shell-script"
SCRIPT_NAME=$(echo $0)
LOG_FILE="$LOG_FOLDER/$SCRIPT_NAME.log"

mkdir -p $LOG_FOLDER

VALIDATE(){
    if [ $1 -ne 0 ]; then
    echo "$2 Installation failed"
    exit 1
    else
    echo "$2 Installation succeeded"
    fi
}


for package in $@
do
dnf list installed $package &>>$LOG_FILE
if [ $? -ne 0 ]; then
    dnf install $package -y &>>$LOG_FILE
    VALIDATE $? "$package"
else
    echo -e "$package already exist ... $Y SKIPPING $N" | tee -a $LOG_FILE
fi

done



