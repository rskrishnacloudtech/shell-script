#!/bin/bash

# Printing the string value on the screen.
echo "Please enter your name: "

# To read the entered value on the screen.
read NAME

# Printing the read value.
echo "Hello, $NAME"

# To enter the value without showing on the screen.
echo "Please enter your username: "
read -s UASERNAME

echo "Please enter your password: "
read -s PASSWORD
echo "Your username is: $USERNAME, and password is: $PASSWORD"

# Reading and entering the data with a single command.
read -p "Please enter the value" ENTEREDVALUE
echo "Entered value is $ENTEREDVALUE"