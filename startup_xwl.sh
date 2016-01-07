#!/bin/sh
### BEGIN INIT INFO
# Provides:          xwl
# Required-Start:    $local_fs $network $named $time $syslog
# Required-Stop:     $local_fs $network $named $time $syslog
# Default-Start:     2 3 4 5
# Default-Stop:      0 1 6
# Description:       Xwl flask webapp
### END INIT INFO
# The above is boilerplate I don't understand


SCRIPT="/home/nacro/launchscripts/launch_xwl.sh"
RUNAS="nacro"

PIDFILE=/var/run/xwl.pid
#LOGFILE=/var/log/xwl.log

start() {
	if [ -f "$PIDFILE" ] && kill -0 $(cat "$PIDFILE"); then
		echo 'Service already running' >&2
		return 1
	fi
	echo 'Starting service…' >&2
	local CMD="$SCRIPT & echo \$!"
	su -c "$CMD" $RUNAS > "$PIDFILE" &
	echo 'Service started' >&2
}

stop() {
	if [ ! -f "$PIDFILE" ] || ! kill -0 $(cat "$PIDFILE"); then
		echo 'Service not running' >&2
		return 1
	fi
	echo 'Stopping service...' >&2
	pkill -P $(pgrep -f "$SCRIPT") && rm -f "$PIDFILE"
	echo 'Service stopped' >&2
}

uninstall() {
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
