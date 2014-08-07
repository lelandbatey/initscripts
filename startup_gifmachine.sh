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


SCRIPT="/home/nacro/launchscripts/launch_gifmachine.sh"
RUNAS="nacro"

# PIDFILE=/var/run/xwl.pid
# LOGFILE=/var/log/xwl.log

start() {
	echo 'Starting service…' >&2
	su -c "$SCRIPT" $RUNAS &
	echo 'Service started' >&2
}

stop() {
	echo 'Stopping of this service is not implemented. Please kill manually.'>&2
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
