# Flameshot screenshot scripts

Scripts for handling screenshots with Flameshot in a way that synergizes with how ShareX (on Windows) works

The format of where screenshots are stored is `$SCREENSHOT_DIR/YYYY-MM/Screenshot_YYYY-MM_hh_mm_ss.png`

**NOTE**: These scripts assume that the dotfiles in this repository are in their respective places, specifically `~/.bash_variables`

## Current keybinds:

- PrtSc -> Screenshot of all screens (`flameshot-full.sh`)
- Alt+PrtSc -> Screenshot of current screen (`flameshot-screen.sh`)
- Ctrl+PrtSc -> Screenshot of manual selection (`flameshot-gui.sh`)
- Shift+PrtSc -> Screenshot via default screenshot application