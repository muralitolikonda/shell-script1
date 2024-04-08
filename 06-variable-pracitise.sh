#!/bin/bash

# comment

echo "Murali Tolikonda" #this is to print the content

#case1 ideally this is not suitalbe as there is a chance of manual errors. 

PERSON1=Raheem
PERSON2=Ram

echo "$PERSON1: hello $PERSON2, good morning"
echo "$PERSON2: hello $PERSON1,very good morning"
echo "$PERSON1: how are you doing? $PERSON1"
echo "$PERSON2: am good $PERSON1"

#case2 this is a way to print the commands by using the shell script variable here we are printing the date command

DATE=$(date)

echo "script start date and time is: ${DATE}"

#case4 this is a way to avoid the spaces and to have the ease of replacing with any names

PERSON1=$1
PERSON2=$2

echo "$PERSON1: hello $PERSON2, good morning"
echo "$PERSON2: hello $PERSON1,very good morning"
echo "$PERSON1: how are you doing? $PERSON1"
echo "$PERSON2: am good $PERSON1"

sh 04-variable.sh Robert Ram # this will print with the respective names (this is called using arguments)

#case5 this is used to create the username and password without visibility 

USERNAME=$1
PASSWORD=$2

echo "username is:$USE4NAME, password is:$PASSWORD"

sh 05-variable.sh admin admin123 #here username and password will be printed respectively and to avoid the visibility follow the below script

#case6 here we are using the "read and read -s to avoid the password visibility

echo "please enter your username"

read -s USERNAME # read -s will not allow to echo the username

echo "username is:$USERNAME"

echo "please enter your password"

read -s PASSWORD # read -s will not allow to echo the username

echo "username is:$PASSWORD"




