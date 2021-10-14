# minecraft-automation-scripts v2

edit: added extra bells and whistles like a status and extra settings. also made the start.sh file not start the server if the server is already running. cleaned up code too and made commenting clearer so people who are new dont get to overwhelmed if they need to make alterations and what-not.

a collection of shell scripts for automating your server with cronjobs
# Requirements:
THIS WILL ONLY WORK IN LINUX OPERATING SYSTEMS
you will need minecraft ready set up (install java download minecraft server jar agreeing to the eula and that)
you will also need to have screen installed too as all of this heavily relies on it

# How to use:
fill in the config file to sute your setup
to run scripts from the terminal type: ./scriptname.sh and then the script will start

to make a script run automatically ie. with a cronjob:
first type in crontab -e
then you should be in a vim window (if you dont know what that is if the console is filled with a vertical line of purple ~ you are fine)
type i to put vim in "edit" mode and then type:

M H * * * /home/PATH/TO/DIR/SCRIPTNAME.sh

YOU MUST CHANGE M H AND SCRIPTNAME.sh
M stands for minutes H stands for hours (uses 24 hour format so 12 in the morning is 0 and 1:00pm is 13)

lastly user and scriptname needs to be changed to the directory and script you want to run 
so for example if you want your server to restart every 24 hours at 3AM you would type:

0 3 * * * /home/PATH/TO/DIR/restart.sh

then press escape to exit out of "edit" mode on vim and type :x! ande press enter to save and exit
then you should be all ready to go
