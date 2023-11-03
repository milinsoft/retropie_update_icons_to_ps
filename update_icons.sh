#!/bin/bash

set -e  # Enable the 'exit on error' option

# PATHS and VARIABLES
MENU_ICONS_LOCATION="/opt/retropie/supplementary/emulationstation/resources/help"
MENU_ICONS_LOCATION_BACKUP="${MENU_ICONS_LOCATION}_BACKUP"

# Script actions
# Do the backup, so the reset would be possible
cp -r "$MENU_ICONS_LOCATION" "$MENU_ICONS_LOCATION_BACKUP"

# copy new icons to the destination folder
cp -ur ./buttons/help/*.svg "$MENU_ICONS_LOCATION"

echo "Success!"
