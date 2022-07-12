#!/bin/bash

LAUNCH_SCRIPTS="/home/leland/projects/initscripts"
INIT_SCRIPTS="/etc/init.d"

#sudo cp "$LAUNCH_SCRIPTS""startup_xwl.sh" "$INIT_SCRIPTS""startup_xwl"
echo sudo cp "${LAUNCH_SCRIPTS}/startup_whereisleland.sh" "${INIT_SCRIPTS}/startup_whereisleland"
sudo cp "${LAUNCH_SCRIPTS}/startup_whereisleland.sh" "${INIT_SCRIPTS}/startup_whereisleland"
echo sudo chmod +x "${INIT_SCRIPTS}/startup_whereisleland"
sudo chmod +x "${INIT_SCRIPTS}/startup_whereisleland"
echo sudo cp "${LAUNCH_SCRIPTS}/startup_whereisleland.service" "/etc/systemd/system/"
sudo cp "${LAUNCH_SCRIPTS}/startup_whereisleland.service" "/etc/systemd/system/"

#update-rc.d startup_xwl defaults
update-rc.d startup_whereisleland defaults
sudo systemctl daemon-reload
sudo systemctl enable startup_whereisleland
sudo service startup_whereisleland start
