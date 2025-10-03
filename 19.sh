#!/bin/bahs

mkdir -p "/var/log/test"
touch /var/log/test/abc.log
dnf list installed nginx
dnf remove nginx &>>abc.log