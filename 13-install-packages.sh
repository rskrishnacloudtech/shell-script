#!/bin/bash

# Getting the user id of the logged in user.
USERID=$(id -u)

# Creating a LOFGILE_NAME with TIMESTAMP and SCRIPT_NAME to store the logs of a commands.
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
LOGFILE_NAME=/tmp/$SCRIPT_NAME-$TIMESTAMP.log

# Declaring a color codes to used in the logs.
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

# Function to check that exit status of the command ran with colors to the result.
VALIDATE() {
    if [ $1 -ne 0 ]
    then
        echo -e "$2.... is $R FAILED $N"
    else
        echo -e "$2.... is $G SUCCESS $N"
    fi
}

# Checking that userid is 0 or not with colors to the result.
if [ $USERID -ne 0 ]
then
    echo -e "$R Please run this script with root access $N"
    exit 1
else
    echo -e "$G You are a root user $N"
fi

# Looping through the list of packages to be installed and checking and skipping the packages if any are installed already.
for i in $@
do
    echo "Package to install... $i"
    dng list installed $i &>> LOGFILE_NAME
    if [ $? -ne 0 ]
    then
        echo -e "$i package is already installed... $Y SKIPPING $N" &>> LOGFILE_NAME
    else
        echo "Installing $i" &>> LOGFILE_NAME
        dnf intall $i -y &>> LOGFILE_NAME
        if [ $? -ne 0 ]
        then
            echo -e "Package $i is installed... $G SUCCESS $N" &>> LOGFILE_NAME
        else
            echo -e "Package $i is not installed.. $R FAILED $N" &>> LOGFILE_NAME  
        fi  
    fi    
done        