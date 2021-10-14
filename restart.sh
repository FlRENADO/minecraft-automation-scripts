#!/bin/bash

# Minecraft Restart Script
# by Firenado 
# march 2021
#
# revision 2 
#october 2021

YELLOW=`tput setaf 3`													# Stuff to make console logs *fancy*
RESET=`tput sgr0`														#
cd "$( dirname $0 )"													# Move to scripts directory

source config.cfg														# Read the config
echo -e "${YELLOW}[INFO]${RESET} STOPPING SERVER..."					# Tell user whats happening 
source stop.sh															# Stop the server
echo -e "${YELLOW}[INFO]${RESET} RESTARTING SERVER..."					# Tell user whats happening (again)
sleep $RestartDelay														# Wait a bit so screen can close (time is configurable)
source start.sh															# Start the server