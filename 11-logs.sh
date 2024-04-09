#!/bin/bash

ID=$(id -u)

echo "Script name: $0"

TIMESTAMP=$(date +%F--%H-%M-%S)
LOGFILE="/tmp/$0-$TIMESTAMP.LOG"


VALIDATE () {
    if [ $1 -ne 0 ]
    then 
        echo -e "ERROR:: $2 ...\e[31m failed \e[0m "
        exit 1
    else
        echo -e "$2 ...\e[32m success \e[0m"
    fi

}


if [ $ID -ne 0 ]
then 
    echo -e "\e[31 ERROR:: \e[0m Please run the script with the root user"
    exit 1 # we are stopping the script to run 

else 
    echo "you are root user"
fi


yum install mysql -y &>> $LOGFILE

VALIDATE $? "Installing mysql"

yum install git -y &>> $LOGFILE

VALIDATE $? "Installing git"