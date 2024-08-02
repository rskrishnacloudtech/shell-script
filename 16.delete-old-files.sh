#!/bin/bash

# Getting the source directory to find and delete the old files.
source_dir=/home/ec2-user/logs_folder/

# Declaring a color codes to used in the logs.
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

# Check that directory is exists or not.
if [ -d $source_dir ] 
then
    echo -e "$R $source_dir is not exists. Please check manually once. $N"
    exit 1
else
    echo -e "$G $source_dir is exists. File will be found and deleted as per the requirement $N"
    
fi

# Finding the files in the above $source_dir which are created before 5 days with name .log.
files_to_delete=$(find $source_dir -name "*.log" -mtime +14)

echo -e "$Y Files found to delete: $files_to_delete $N"

# Deleting the files.
while IFS= read -r line
do
    echo -e "$Y Deleting the files... $N"
    rm -rf $line
done <<< $files_to_delete
