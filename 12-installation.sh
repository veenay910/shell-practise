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

    echo "permission value of user is $USERID"
    echo "ERROR:: script should be run using sudo permissions"

else
     echo "permission value of user is $USERID "
    echo "Script is running through sudo permissions"
fi

dnf install mysql-server -y

if [ $? -eq 0 ]; then
    echo "No error found"
    echo "Installation completed successfully"
else [ $? -ne 0 ]; then
    echo "error found"
    echo "installation failed"

fi















#systemctl enable mysqld
#systemctl start mysqld  
#systemctl status mysqld 