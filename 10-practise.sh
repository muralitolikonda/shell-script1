#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
then 

    echo "ERROR:: Please run the script with the root user"
    exit 1

else
    echo "You are root user"
    
fi 

yum intall mysql -y

if [ $? -ne 0 ]
then 

    echo "Intalling mysql failed"
    exit 1
else
    echo "Intalling mysql success"
    exit 1
fi



