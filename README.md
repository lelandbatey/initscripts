Initscripts
===========


These scripts are Init V scripts allowing for easy starting of the different processes I frequently need started.



Requirements
------------

The contents of this folder needs to be put in the file at location `/home/nacro/launchscripts/`.


Installation of Scripts
-----------------------

To install, run the script `install_init-scripts.sh` with `sudo`.


Usage
-----

To start the processes, use one of the following commands:

	sudo service startup_gifmachine start
	sudo service startup_whereisleland start
	sudo service startup_whereisthomas start
	sudo service startup_xwl start


Structure of Files
------------------

Each init-script calls a startup script that does the actual heavy lifting. So like this:

	startup_gifmachine.sh
	|
	`-- launch_gifmachine.sh






