#!/bin/bash

# Minecraft Restart Script (with backup)
# by Firenado 
# march 2021
#
# revision 2 
#october 2021

YELLOW=`tput setaf 3`													# Stuff to make console logs *fancy*
RESET=`tput sgr0`														#
cd "$( dirname $0 )"													# Move to scripts directory
source config.cfg														# Read the config

echo -e "${YELLOW}[INFO]${RESET} STOPPING SERVER..."					# Echo to the CLI whats happening
source stop.sh															# Stop the server
echo -e "${YELLOW}[INFO]${RESET} SAVING BACKUP FOLDER..."				# Echo to the CLI whats happening
tar -zcf $backupDest/$Nick-$backupStamp.tar.gz $minecraftDir/* 			# TAR the main world folder and save in config location
echo -e "${YELLOW}[INFO]${RESET} RESTARTING SERVER..."					# Echo to the CLI whats happening
source start.sh															# Start the server