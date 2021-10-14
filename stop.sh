#!/bin/bash

# Minecraft stop Script
# by Firenado 
# march 2021
#
# revision 2 
#october 2021

YELLOW=`tput setaf 3`													# Stuff to make console logs *fancy*
RESET=`tput sgr0`														#
cd "$( dirname $0 )"													# Move to scripts directory
source config.cfg														# Read the config

echo -e "${YELLOW}[INFO]${RESET} ANOUNCING SERVER SHUT DOWN..." 		# Anounce to the CLI whats happening
screen -p 0 -S $Nick -X eval "stuff \"say Server will be shutting down in ${StopTime} seconds.\"\015"
sleep $StopTime															# Delay between anouncement and actually closing
screen -p 0 -S $Nick -X eval "stuff \"stop\"\015"						# Send stop command to the mc server
echo -e "${YELLOW}[INFO]${RESET} SERVER OFFLINE"