## aconfmgr configuration

A set of files, that when run through aconfmgr (and in combination with the dotfiles), should be able to set up a new install with the same configuration as the previous installation of Arch Linux for that computer.

For maintenance (keeping these files updated), run `aconfmgr save -c ./aconfmgr`. Any new changes will be in `99-unsorted.sh`, and should be moved to their relevant aconfmgr `.sh` configuration file.

To restore an installation, run `aconfmgr apply -c ./aconfmgr`.

NOTE: Try to manually install flatpak as it keeps rejecting flatpak in here for some reason

As well, a copy of [refind-theme-regular](https://github.com/bobafetthotmail/refind-theme-regular) exists in `/boot/EFI/BOOT/themes` (instead of being installed via the AUR) for ease of installation and configuration. To update it, manually run the script for the theme again, with refind in `/boot/EFI/BOOT/`, medium-sized icons, and a dark theme.

For more information, check out [the repository for aconfmgr](https://github.com/CyberShadow/aconfmgr).