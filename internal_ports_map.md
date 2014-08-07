Internal Ports Mapping
======================


	Gifmachine          : 8000
	xwl.me              : 5010
	whereis.lelandbatey : 8001
	thomas.xwl          : 8002


## Reference

Location of python:
	
	/home/nacro/bin/venv/bin/python

Location of gunicorn:

	/home/nacro/bin/venv/bin/gunicorn


Commands
--------

### Init Command vs Normal Command

The `Init Command` has to be the fully un-ambiguous command to run a program. This means no relative paths, no assumptions about the environment it's running under, nothing.



## Gifmachine


	# Directory
	#     /home/nacro/projects/gifConverter/
	gunicorn -w 4 -b 127.0.0.1:8000 app:app --access-logfile /var/www/nacro/media/logs/gifMachine_access.log --error-logfile /var/www/nacro/media/logs/gifMachine_error.log

	# Init Command
	cd /home/nacro/projects/gifConverter/; /home/nacro/bin/venv/bin/gunicorn -w 4 -b 127.0.0.1:8000 app:app --access-logfile /var/www/nacro/media/logs/gifMachine_access.log --error-logfile /var/www/nacro/media/logs/gifMachine_error.log


## xwl.me


	# Directory:
	#     /var/www/xwl.me/
	cd /var/www/xwl.me/; /home/nacro/bin/venv/bin/gunicorn -w 5 -b 127.0.0.1:5010 hello:app --access-logfile /var/www/nacro/media/logs/xwl.me_access.log --error-logfile /var/www/nacro/media/logs/xwl.me_error.log



## whereis.lelandbatey.com


	# Directory:
	#     /var/www/leland/whereis/whereIAm/
	python app.py



## Thomas.xwl.me


	# Directory:
	#     /var/www/leland/whereis/where_thomas_is
	python app.py




