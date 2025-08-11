#!/bin/bash

# NOTE: In COSMIC, clipboard support does not work yet!
export FLAMESHOT_ARGS="--clipboard"

if ! command -v flameshot >/dev/null 2>&1; then
    echo "flameshot could not be found" 1>&2
    exit 1
fi

source $HOME/.bash_variables

# NOTE: Make sure that SCREENSHOT_DIR variable is exported to this script!
if [[ ! "$SCREENSHOT_DIR" ]]; then 
   echo "SCREENSHOT_DIR variable is empty" 1>&2
   exit
fi

export SCREENSHOT_SUBDIR="$(date '+%Y-%m')"
export SCREENSHOT_FULL_DIR="$SCREENSHOT_DIR/$SCREENSHOT_SUBDIR"
export SCREENSHOT_FILE_NAME="Screenshot_$( date '+%F_%H-%M-%S' ).png"

if [[ ! -e "$SCREENSHOT_FULL_DIR" ]]; then
    mkdir "$SCREENSHOT_FULL_DIR"
elif [[ ! -d "$SCREENSHOT_FULL_DIR" ]]; then
    echo "$SCREENSHOT_FULL_DIR already exists but is not a directory" 1>&2
fi