#!/bin/bash

# Declaring variable with args.

#To provide values to these variables.
#We have to provide the values while running the script.
#Ex:
#    sudo sh <script-name>.sh arg1 arg2 arg3
#    ./<script-name>.sh arg1 arg2 arg3



Course=$1
Institute=$2
Trainer=$3

# Referring the variables.
echo "I am learning $Course in $Institute by trainer: $Trainer"

