#!/bin/bash

# Minecraft Restart Script
# by Firenado 
# march 2021

# Move to scripts directory 
cd "$( dirname $0 )"

# Read config
source config.cfg

# Stop the server
source stop.sh

# Start the server
source start.sh