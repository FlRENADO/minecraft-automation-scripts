#!/bin/bash

# Minecraft stop Script
# by Firenado 
# march 2021

# Move to scripts directory 
cd "$( dirname $0 )"

# Read config
source config.cfg

# First we make the server anounce it will shut down in 10 seconds. 
# You can change the value to a bigger/smaller time if required
# \015 is the escape value for a return so its basically running commands like a user would
screen -p 0 -S minecraft -X eval "stuff \"say Server will be shutting down in 10 seconds.\"\015"

# Wait 10 seconds.
sleep 10

# Send "stop" command to the MC console and terminate the screen session one finnished
screen -p 0 -S minecraft -X eval "stuff \"stop\"\015"