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


dnf list installed nginx 
dnf install nginx -y