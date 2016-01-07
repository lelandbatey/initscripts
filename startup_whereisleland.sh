#!/bin/sh
### BEGIN INIT INFO
# Provides:          <NAME>
# Required-Start:    $local_fs $network $named $time $syslog
# Required-Stop:     $local_fs $network $named $time $syslog
# Default-Start:     2 3 4 5
# Default-Stop:      0 1 6
# Description:       <DESCRIPTION>
### END INIT INFO
# The above is boilerplate I don't understand


SCRIPT="/home/nacro/launchscripts/launch_whereisleland.sh"
RUNAS="nacro"

# PIDFILE=/var/run/whereisleland.pid
# LOGFILE=/var/log/whereisleland.log

start() {
	echo 'Starting service…' >&2
	su -c "$SCRIPT" $RUNAS &
	echo 'Service started' >&2
}

stop() {
	# if [ ! -f "$PIDFILE" ] || ! kill -0 $(cat "$PIDFILE"); then
	# 	echo 'Service not running' >&2
	# 	return 1
	# fi
	# echo 'Stopping service…' >&2
	# echo $(ps ax | grep "$SCRIPT" | head -n1 | cut -d' ' -f 1) >&2
	# kill -15 $(ps ax | grep "$SCRIPT" | head -n1 | cut -d' ' -f 1) #&& rm -f "$PIDFILE"
	# echo 'Service stopped' >&2
	echo 'Stopping of this service is not implemented. Please kill manually.'>&2
}

uninstall() {
	# echo -n "Are you really sure you want to uninstall this service? That cannot be undone. [yes|No] "
	# local SURE
	# read SURE
	# if [ "$SURE" = "yes" ]; then
	# 	stop
	# 	rm -f "$PIDFILE"
	# 	echo "Notice: log file is not be removed: '$LOGFILE'" >&2
	# 	update-rc.d -f <NAME> remove
	# 	rm -fv "$0"
	# fi
	echo "Uninstallation is not implemented."
	echo "You can manually remove this auto-start script using the command 'update-rc.d -f <thisScript> remove"
}

case "$1" in
	start)
		start
		;;
	stop)
		stop
		;;
	uninstall)
		uninstall
		;;
	retart)
		stop
		start
		;;
	*)
		echo "Usage: $0 {start|stop|restart|uninstall}"
esac
