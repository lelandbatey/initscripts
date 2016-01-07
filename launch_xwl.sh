#!/bin/bash

# Goes to the correct directory, launches the program, then when ended,
# returns to it's original directory

ORIGINAL_DIR="$(echo $PWD)"

# Move to correct directory for this program
cd "/var/www/xwl.me/"

# Launch with full paths and explanations
/var/www/xwl.me/venv/bin/gunicorn -w 5 -b 127.0.0.1:5010 run:APP --access-logfile /var/www/nacro/media/logs/xwl.me_access.log --error-logfile /var/www/nacro/media/logs/xwl.me_error.log


cd "$ORIGINAL_DIR"
