#!/bin/bash

var1=$1
var2=$2

echo "All the args passed to the script: $@"
echo "Total number of args passed to the script: $#"
echo "Name of the current running script: $0"
echo "Present working directory: $PWD"
echo "Home folder of the present logged in user: $HOME"
echo "Username of the current logged in user: $USER"
echo "Hostname of the server: $HOSTNAME"
echo "Process ID of the current running process: $$"
sleep 30 &
echo "Process ID of the last backgroud process: $!"
echo "Status of the last run command: $?"
echo "ith element passed to the script: $i"
echo "All the args passed to the script: $*"
echo "Last arg passed to the last run script: $_"

