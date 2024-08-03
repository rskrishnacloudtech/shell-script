#!/bin/bash

timestamp=$(date +%F-%H-%M-%S)
fromFolder=/home/ec2-user/fromfolder/
toFolder=/home/ec2-user/tofolder/
zipFileName="file-backup-$timestamp.zip"

zip -r /home/ec2-user/tofolder/$zipFileName.zip /home/ec2-user/fromfolder/
