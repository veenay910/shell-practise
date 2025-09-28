#!/bin/bash

#scipt to install the mysql server

# 1. Need to run with sudo user
# 2. if not stop the installation
# 3. if yes install the mysql 
# 4. #? exit status of previous command 0=success, otherwise failed0
#5. Install the application
#


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














#systemctl enable mysqld
#systemctl start mysqld  
#systemctl status mysqld 