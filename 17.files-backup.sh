#!/bin/bash

# Forming a time stamp
timestamp=$(date +%F-%H-%M-%S)
fromFolder=/home/ec2-user/fromfolder/
toFolder=/home/ec2-user/tofolder/
zipFileName="file-backup-$timestamp.zip"

# Zipping the folder and moving into another folder.
zip -r "$toFolder/$zipFileName" $fromFolder

# Checking that backup file is saved successfully or not.
ls -l $toFolder | grep $zipFileName
if [ $? -ne 0 ]
then
    echo "Files has NOT been backed up. Backup FAILED. Please review it once."
    exit 1
else
    echo "Files has been backed up successfully."    
fi
