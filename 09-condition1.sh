#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
then 
    echo "ERROR:: Please run the script with the root user"

else 
    echo "you are root user"
fi