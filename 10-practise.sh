#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
then 

    echo "ERROR:: Please run the script with the root user"
    exit 1

else
    echo "You are root user"
    exit 1
fi 

yum intall mysql -y


