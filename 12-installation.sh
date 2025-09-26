#!/bin/bash

#scipt to install the mysql server

# 1. Need to run with sudo user
# 2. if not stop the installation
# 3. if yes install the mysql 
# 4. 
#
#

USERID=$(id -u)

if ($USERID -ne 0); then
    echo "ERROR:: script should be run using sudo permissions"

else
    echo "Script is running through sudo permissions"
fi