#!/bin/bash

#scipt to install the mysql server

# 1. Need to run with sudo user
# 2. if not stop the installation
# 3. if yes install the mysql 
# 4. #? exit status of previous command 0=success, otherwise failed
#
#

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo "ERROR:: Please run the script wit sudo permissions"
fi













#systemctl enable mysqld
#systemctl start mysqld  
#systemctl status mysqld 