#!/bin/bash

LAUNCH_SCRIPTS="/home/nacro/launchscripts/"
INIT_SCRIPTS="/etc/init.d/"

sudo cp "$LAUNCH_SCRIPTS""startup_xwl.sh" "$INIT_SCRIPTS""startup_xwl"
sudo cp "$LAUNCH_SCRIPTS""startup_whereisleland.sh" "$INIT_SCRIPTS""startup_whereisleland"

update-rc.d startup_xwl defaults
update-rc.d startup_whereisleland defaults
