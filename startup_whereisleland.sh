#!/bin/sh
### BEGIN INIT INFO
# Provides:          <NAME>
# Required-Start:    $local_fs $network $named $time $syslog
# Required-Stop:     $local_fs $network $named $time $syslog
# Default-Start:     2 3 4 5
# Default-Stop:      0 1 6
# Description:       <DESCRIPTION>
### END INIT INFO


SCRIPT="/home/leland/projects/initscripts/launch_whereisleland.sh"
RUNAS="leland"

PIDFILE=/var/run/whereisleland.pid
# LOGFILE=/var/log/whereisleland.log

start() {

	if [ -f "$PIDFILE" ] && /bin/kill -0 $(cat "$PIDFILE"); then
		echo 'Service already running' >&2
		return 1
	fi
	echo 'Starting service…' >&2
	local CMD="$SCRIPT & echo \$!"
	su -c "$CMD" $RUNAS > "$PIDFILE" &
	echo 'Service started' >&2
}

stop() {
	if [ ! -f "$PIDFILE" ] || ! /bin/kill -0 $(cat "$PIDFILE"); then
		echo 'Service not running' >&2
		return 1
	fi
	echo 'Stopping service...' >&2
	pkill -P $(pgrep -f "$SCRIPT") && rm -f "$PIDFILE"
	echo 'Service stopped' >&2
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
