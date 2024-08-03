#!/bin/bash

# Forming a time stamp
timestamp=$(date +%F-%H-%M-%S)
fromFolder=/home/ec2-user/fromfolder/
toFolder=/home/ec2-user/tofolder/
zipFileName="file-backup-$timestamp.zip"

# Zipping the folder and moving into another folder.
zip -r "$toFolder/$zipFileName" $fromFolder

#
ls -l $toFolder | grep zipFileName
if [ $? -eq 0 ]
then
    echo "Files has been backed up successfully."
else
    echo "Files has NOT been backed up. Backup FAILED. Please review it once."
fi
