#!/bin/bash

ID=$(id -u)

R=\e[31m
G=\e[32m
Y=\e[33m
N=\e[0m

TIMESTAMP=$(date +%F-%H-%M-%S)
LOGFILE="/tmp/$0-$TIMESTAMP.log"

echo "script started executing at $TIMESTAMP" &>> $LOGFILE

VALIDATE() {
    if [ $1 -ne 0 ]
    then 
        echo "$2 ...$R FAILED $N"
        exit 1
    else
        echo "$2 ...$G SUCCESS $N"
    fi
}

if [$ID -ne 0]
then
    echo -e "$R Error:: $N Please run the script with the root user $N"
    exit 1
else
    echo "you are root user"
fi

for package in $@
do 
    yum list installed $package &>> $LOGFILE
    if [ $? -ne 0 ]
    then
        yum install $package -y 
        VALIDATE $? "installation of $package" &>> $LOGFILE
    else 
        echo -e "$package is already installed ...$Y SKIPPING $N " 

    fi
done



