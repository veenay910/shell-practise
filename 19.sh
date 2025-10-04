#!/bin/bahs

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo "Sudo permission validatoin falied...exiting"
    exit 1
else
    echo "Sudo permissionation validated...Proceeding"
fi

mkdir -p "/var/log/test"
touch /var/log/test/abc.log
LOGS="/var/log/test/abc.log"

VALIDATE(){
    if [ $1 -ne 0 ]; then
    echo "$2 Installation failure"
    exit 1
    else
    echo "$2 Installation success"
    fi
}


dnf list installed nginx &>>$LOGS
if [ $? -ne 0 ]; then
    echo "nginx not exist...Proceeding to install"
    dnf install nginx -y &>>$LOGS
    VALIDATE $? "nginx"
else
    echo "nginx alredy installed...SKIPPING"
fi
