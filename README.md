minecraft-automation-scripts (simple edition)
=======================================
a collection of shell scripts for automating your server with cronjobs

Edit:
-----
added extra bells and whistles like:
	* status.sh
	* extra configuration
	* now checks if a screen with the same Nick is running to prevent the same server runnign twice
	


Features
--------

 * Uses screen to run headlessly 
 * mostly easy to use
 * easily configurable
 * nicknames for server screen sessions for multiple instances

Requirements
------------
screen, Linux/unix operating system

you will also need minecraft ready set up (install java download minecraft jar agreeing to the eula and that)

Access server console
=====================

	screen -r mc

Exit the console
	
	Ctrl+A D
	
Stop the server
	
	Ctrl+C
	


Setup
=====

1. make the script exacuitable 

		chmod 755  ~/start.sh
		chmod 755  ~/restart.sh
		chmod 755  ~/stop.sh
		chmod 755  ~/restartandbackup.sh
		chmod 755  ~/status.sh

2. Edit the settings in `config.cfg` to match your setup (like the directory the server jar is in and the name of the jar)

3. Edit crontab:

to make a script run automatically ie. with a cronjob: first type in crontab -e then you should be in a vim window (if you dont know what that is if the console is filled with a vertical line of purple ~ you are fine) type i to put vim in "edit" mode and then type:
	
	M H * * * /home/PATH/TO/DIR/SCRIPTNAME.sh
	
YOU MUST CHANGE M H AND SCRIPTNAME.sh M stands for minutes H stands for hours (uses 24 hour format so 12 in the morning is 0 and 1:00pm is 13)

lastly user and scriptname needs to be changed to the directory and script you want to run so for example if you want your server to restart every 24 hours at 3AM you would type:

	As the server user:
	
		crontab -e

	Add these lines:

		#m 	h 	dom	mon	dow	command
		 0 	3 	*	*	*	/home/PATH/TO/DIR/restart.sh

then press escape to exit out of "edit" mode on vim and type :x! ande press enter to save and exit then you should be all ready to go

4. Usage:

	* start.sh starts the server
	* stop.sh stops the server
	* status.sh tells you whether there is a screen with the name of the server running ot not
	* restart.sh runs the stop script and then the start script
	* restartandbackup stops the server and then tars the world file befor restarting the server again 
	
