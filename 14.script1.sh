#!/bin/bash

# Variable in script1.
COURSE="Learing DevOps in script1"

# Printing the variable value and PID of script1.
echo "Course from script1: $COURSE"
echo "Process ID of script1: $$"

# Calling the script2 directly.
#./15.script2.sh

# Calling the script2  by sourcing.
source ./15.script2.sh

# Printing the variable value and PID of script1 after calling script2.
echo "Course from script1 after calling script2: $COURSE"
echo "Process ID of script1 after calling script2: $$"