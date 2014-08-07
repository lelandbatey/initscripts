#!/bin/bash

# Goes to the correct directory, launches the program, then when ended,
# returns to it's original directory

ORIGINAL_DIR="$(echo $PWD)"

# Move to correct directory for this program
cd "/var/www/leland/whereis/where_thomas_is/"

# Launch with full paths and expansions
/home/nacro/bin/venv/bin/python app.py

cd "$ORIGINAL_DIR"