#!/bin/bash

# Minecraft startup Script
# by Firenado 
# march 2021

# Move to scripts directory 
cd "$( dirname $0 )"

# Read the config
source config.cfg

# Move to the minecraft directory.
cd $minecraftDir

# Start the game in screen so we can access it later with screen -r minecraft
# If you need more ram (or less if its running on a 32bit system) change the Xmx and Xms values
screen -dmS minecraft java -Xmx2048M -Xms2048M -jar $minecraftJar nogui