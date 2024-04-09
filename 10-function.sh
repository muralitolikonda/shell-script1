#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
then 
    echo "ERROR:: Please run the script with the root user"
    exit 1 # we are stopping the script to run 

else 
    echo "you are root user"
fi

VALIDATE () {
    if [ $? -ne 0 ]
    then 
        echo "ERROR:: Installing mysql failed"
        exit 1
    else
        echo "Installing mysql success"
    fi

}

yum install mysql -y

VALIDATE 

yum install git -y

VALIDATE