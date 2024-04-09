#!/bin/bash

ID=$(id -u)

echo "Script name: $0"

TIMESTAMP=$(date +%F--%H-%M-%S)
LOGFILE="/tmp/$0-$TIMESTAMP.LOG"


VALIDATE () {
    if [ $1 -ne 0 ]
    then 
        echo "ERROR:: $2 ...failed"
        exit 1
    else
        echo "$2 ...success"
    fi

}


if [ $ID -ne 0 ]
then 
    echo "ERROR:: Please run the script with the root user"
    exit 1 # we are stopping the script to run 

else 
    echo "you are root user"
fi


yum install mysql -y &>> $LOGFILE

VALIDATE $? "Installing mysql"

yum install git -y &>> $LOGFILE

VALIDATE $? "Installing git"