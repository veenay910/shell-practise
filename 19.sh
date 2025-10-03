#!/bin/bash

SCRIPT_NAME=$( echo $0 )

echo " $SCRIPT_NAME "


mkdir -p LOG_FOLDER "/var/log/shellscript"
if [ $? -ne 0 ]; then
    echo " Created folder"
fi


