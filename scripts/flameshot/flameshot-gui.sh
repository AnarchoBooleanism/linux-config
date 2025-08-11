#!/bin/bash

source ./flameshot-common.sh

# NOTE: Currently bugged in COSMIC and/or multi-monitor setups!
flameshot gui $FLAMESHOT_ARGS --path "$SCREENSHOT_FULL_DIR/$SCREENSHOT_FILE_NAME"