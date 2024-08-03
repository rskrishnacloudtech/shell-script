#!/bin/bash

# Forming a time stamp
timestamp=$(date +%F-%H-%M-%S)
fromFolder=/home/ec2-user/fromfolder/
toFolder=/home/ec2-user/tofolder/
zipFileName="file-backup-$timestamp.zip"

zip -r "$toFolder/$zipFileName.zip" $fromFolder
