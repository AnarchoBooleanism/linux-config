#!/bin/bash

source $(dirname "$0")/flameshot-common.sh

flameshot full $FLAMESHOT_ARGS --path "$SCREENSHOT_FULL_DIR/$SCREENSHOT_FILE_NAME"