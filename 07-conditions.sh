#!/bin/bash

# If condition declaration.
number=$1

if [ $number -gt 10 ]
then
    echo "Given number $number is greater than 10"
else
    echo "Given number $number is less than 10"
fi
