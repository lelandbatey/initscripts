#!/bin/bash

# Goes to the correct directory, launches the program, then when ended,
# returns to it's original directory

ORIGINAL_DIR="$(echo $PWD)"

# Move to correct directory for this program
cd "/var/www/whereis.lelandbatey.com/whereIAm"

# Launch with full paths and expansions
/home/leland/bin/venv/bin/python app.py

cd "$ORIGINAL_DIR"
