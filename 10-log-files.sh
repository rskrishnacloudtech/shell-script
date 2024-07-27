#!/bin/bash

# Getting the user id of the logged in user.
USERID=$(id -u)

# Creating a LOFGILE_NAME with TIMESTAMP and SCRIPT_NAME to store the logs of a commands.
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=${echo $0 | cut -d "." -f1}
LOGFILE_NAME=/tmp/$SCRIPT_NAME-$TIMESTAMP.log

# Function to check that exit status of the command ran.
VALIDATE() {
    if [ $1 -ne 0 ]
    then
        echo "$2.... is FAILED"
    else
        echo "$2.... is SUCCESS"
    fi
}

# Checking that userid is 0 or not.
if [ $USERID -ne 0 ]
then
    echo "please run this script with root access"
    exit 1
else
    echo "You are a root user"
fi

# Running the commands and validating the exit code and redirecting the command output to the log file.
dnf install mysql -y &>> LOGFILE_NAME
VALIDATE $? "Installing MySQL"