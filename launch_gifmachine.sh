#!/bin/bash

# Goes to the correct directory, launches the program, then when ended,
# returns to it's original directory

ORIGINAL_DIR="$(echo $PWD)"

# Move to correct directory for this program
cd "/home/nacro/projects/gifConverter"

source "/home/nacro/bin/venv/bin/activate"
# Launch with full paths and expansions
/home/nacro/bin/venv/bin/gunicorn -w 8 -b 127.0.0.1:8000 app:app --access-logfile /var/www/nacro/media/logs/gifMachine_access.log --error-logfile /var/www/nacro/media/logs/gifMachine_error.log


cd "$ORIGINAL_DIR"