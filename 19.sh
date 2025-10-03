#!/bin/bash

SCRIPT_NAME=$( echo $0 )

echo " $SCRIPT_NAME "


mkdir -p LOG_FOLDER "/var/log/shellscript"
touch 19.log "/var/log/shellscript"
if [ $? -ne 0 ]; then
    echo " Created folder"
else    
    echo "Folder alredy exist"
fi

#create log file
LOG_FOLDER="/var/log/shellscript"
Script_file=$( echo $0 )
echo "$Script_file"
LOG_FILE=$LOG_FOLDER/$Script_file.log

dnf list installed nginx &>>LOG_FILE
