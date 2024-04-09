#!/bin/bash

VALIDATE () {
    if [ $1 -ne 0 ]
    then 
        echo "ERROR:: $2 ...failed"
        exit 1
    else
        echo "$2 ...success"
    fi

}

ID=$(id -u)

if [ $ID -ne 0 ]
then 
    echo "ERROR:: Please run the script with the root user"
    exit 1 # we are stopping the script to run 

else 
    echo "you are root user"
fi


yum install mysql -y

VALIDATE $? "Installing mysql"

yum install git -y

VALIDATE $? "Installing git"