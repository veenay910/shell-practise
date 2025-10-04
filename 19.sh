#!/bin/bahs

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo "Sudo permission validatoin falied...exiting" | tee -a $LOGS
    exit 1
else
    echo "Sudo permissionation validated...Proceeding" | tee -a $LOGS
fi

mkdir -p "/var/log/test"
touch /var/log/test/abc.log
LOGS="/var/log/test/abc.log"

VALIDATE(){
    if [ $1 -ne 0 ]; then
    echo "$2 Installation failure" | tee -a $LOGS
    exit 1
    else
    echo "$2 Installation success" | tee -a $LOGS
    fi
}


dnf list installed nginx &>>$LOGS
if [ $? -ne 0 ]; then
    echo "nginx not exist...Proceeding to install" | tee -a $LOGS
    dnf install nginx -y &>>$LOGS
    VALIDATE $? "nginx"
else
    echo "nginx alredy installed...SKIPPING" | tee -a $LOGS
fi

dnf list installed mysql &>>$LOGS
if [ $? -ne 0 ]; then
    echo "mysql not exist...Proceeding to install" | tee -a $LOGS
    dnf install mysql -y &>>$LOGS
    VALIDATE $? "mysql"
else
    echo "mysql alredy installed...SKIPPING" | tee -a $LOGS
fi

