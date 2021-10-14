#!/bin/bash

# Minecraft startup Script
# by Firenado 
# march 2021
#
# revision 2 
#october 2021

RED=`tput setaf 1`
YELLOW=`tput setaf 3`													# Stuff to make console logs *fancy*
RESET=`tput sgr0`														#
cd "$( dirname $0 )"													# Move to scripts directory
source config.cfg														# Read the config
cd $minecraftDir														# Move to the minecraft directory.

if screen -list | grep -q "${Nick}"; then								# Check if server is already running (or atleast one with the same name)
	echo -e "${RED}[ERROR]${RESET} SERVER iIS ALREADY RUNNING"		# If true
else																	# If false
	echo -e "${YELLOW}[INFO]${RESET} INITIALISING..."					# Anounce to the CLI that things are happening
	screen -dmS $Nick java -Xms$initial -Xmx$max -jar $minecraftJar nogui	# Start the server in screen using configs
	echo -e "${YELLOW}[INFO]${RESET} SERVER STARTING..."				# Again say something to the CLI so users know its working 
	sleep 1
	echo -e "${YELLOW}[INFO]${RESET} TO CONNECT TO SERVER CONSOLE RUN 'screen -r ${Nick}'"
	sleep 1
	echo -e "${YELLOW}[INFO]${RESET} TO EXIT SCREEN BUT LEAVE THE SERVER RUNNING PRESS CTRL+A THEN D"
fi
