#!/bin/bash

timestamp=$(date +%F -%H -%M -%S)
fromFolder=/home/ec2-user/fromfolder/
toFolder=/home/ec2-user/tofolder/
zipFileName="file-backup-$timestamp.zip"

zip -r /home/ec2-user/tofolder/data.zip /home/ec2-user/fromfolder/
