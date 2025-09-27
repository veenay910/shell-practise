#!/bin/bash

#scipt to install the mysql server

# 1. Need to run with sudo user
# 2. if not stop the installation
# 3. if yes install the mysql 
# 4. 
#
#

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo "Not running with sudo permissions"
fi













#systemctl enable mysqld
#systemctl start mysqld  
#systemctl status mysqld 