#!/bin/bash

LAUNCH_SCRIPTS="/home/nacro/launchscripts/"
INIT_SCRIPTS="/etc/init.d/"

sudo cp "$LAUNCH_SCRIPTS""startup_xwl.sh" "$INIT_SCRIPTS""startup_xwl"
sudo cp "$LAUNCH_SCRIPTS""startup_gifmachine.sh" "$INIT_SCRIPTS""startup_gifmachine"
sudo cp "$LAUNCH_SCRIPTS""startup_whereisleland.sh" "$INIT_SCRIPTS""startup_whereisleland"
sudo cp "$LAUNCH_SCRIPTS""startup_whereisthomas.sh" "$INIT_SCRIPTS""startup_whereisthomas"

update-rc.d startup_xwl defaults
update-rc.d startup_gifmachine defaults
update-rc.d startup_whereisleland defaults
update-rc.d startup_whereisthomas defaults