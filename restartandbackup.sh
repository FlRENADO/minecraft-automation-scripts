#!/bin/bash

# Minecraft Backup and Restart Script
# by Firenado 
# march 2021

# Move to scripts directory 
cd "$( dirname $0 )"

# Read config
source config.cfg

# Stop the server
source stop.sh

# Backup the entire minecraft folder make it into a .tar and save in the stated backup destination
tar -zcf $backupDest/$serverNick-$backupStamp.tar.gz $minecraftDir/*

# Start the server
source start.sh