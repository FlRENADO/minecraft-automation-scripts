#!/bin/bash

# Minecraft Status Script
# by Firenado 
# march 2021
#
# revision 2 
#october 2021

YELLOW=`tput setaf 3`													# Stuff to make console logs *fancy*
RESET=`tput sgr0`														#
source config.cfg														# Read the config

if find_screen "${Nick}" >/dev/null; then								# See if there is a sereen running with the name in the config 
    echo -e "${YELLOW}[INFO]${RESET} SERVER ONLINE"						#true
else
	echo -e "${YELLOW}[INFO]${RESET} SERVER OFFLINE"					#false
fi
