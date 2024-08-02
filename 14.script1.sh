#!/bin/bash

course="Learing DevOps in script1"

echo "Course from script1: $COURSE"
echo "Process ID of script1: $$"

./15.script2.sh

echo "Course from script1 after calling script2: $COURSE"
echo "Process ID of script1 after calling script2: $$"