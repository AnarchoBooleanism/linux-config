#!/bin/bash

source ./flameshot-common.sh

# NOTE: In COSMIC, screen number is currently bugged! Only does monitor 0 instead of where cursor is
flameshot screen $FLAMESHOT_ARGS --path "$SCREENSHOT_FULL_DIR/$SCREENSHOT_FILE_NAME"