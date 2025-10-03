#!/bin/bash

SCRIPT_NAME=$( echo $0 )

echo " $SCRIPT_NAME "


mkdir -p LOG_FOLDER "/var/log/shellscript"
if [ $? -ne 0 ]; then
    echo " Created folder"
else    
    echo "Folder alredy exist"
fi

#create log file
Script_file=echo "$0.log"
echo "$Script_file"
LOG_FILE=$LOG_FOLDER/$Script_file

dnf list installed nginx &>>LOG_FILE
