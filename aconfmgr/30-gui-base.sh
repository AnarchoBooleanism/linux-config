# List of base packages for GUI, being desktop environments

# Prerequisites
# AddPackage flatpak # Do this manually, aconfmgr doesn't like this
AddPackage packagekit # A system designed to make installation and updates of packages easier
AddPackage speech-dispatcher # High-level device independent layer for speech synthesis interface

# IME
AddPackage fcitx5 # Next generation of fcitx
AddPackage fcitx5-configtool # Configuration Tool for Fcitx5
AddPackage fcitx5-mozc # Fcitx5 Module of A Japanese Input Method for Chromium OS, Windows, Mac and Linux (the Open Source Edition of Google Japanese Input)

# COSMIC
AddPackageGroup cosmic

# KDE Plasma
AddPackage plasma-desktop # KDE Plasma Desktop
AddPackage breeze-gtk # Breeze widget theme for GTK 2 and 3
AddPackage breeze5 # Qt5 Breeze style
AddPackage dolphin # KDE File Manager
AddPackage drkonqi # The KDE crash handler
AddPackage kde-gtk-config # Syncs KDE settings to GTK applications
AddPackage kdeconnect # Adds communication between KDE and your smartphone
AddPackage kdeplasma-addons # All kind of addons to improve your Plasma experience
AddPackage kinfocenter # A utility that provides information about a computer system
AddPackage kscreen # KDE screen management software
AddPackage ksshaskpass # ssh-add helper that uses kwallet and kpassworddialog
AddPackage ksystemlog # System log viewer tool
AddPackage kvantum # SVG-based theme engine for Qt6 (including config tool and extra themes)
AddPackage kwallet-pam # KWallet PAM integration
AddPackage kwalletmanager # Wallet management tool
AddPackage kwrited # KDE daemon listening for wall and write messages
AddPackage plasma-browser-integration # Components necessary to integrate browsers into the Plasma Desktop
AddPackage plasma-disks # Monitors S.M.A.R.T. capable devices for imminent failure
AddPackage plasma-nm # Plasma applet written in QML for managing network connections
AddPackage plasma-pa # Plasma applet for audio volume management using PulseAudio
AddPackage plasma-thunderbolt # Plasma integration for controlling Thunderbolt devices
AddPackage plasma-welcome # A friendly onboarding wizard for Plasma
AddPackage plymouth-kcm # KCM to manage the Plymouth (Boot) theme
AddPackage spectacle # KDE screenshot capture utility
AddPackage --foreign darkly # Fork of Lightly (A modern style for Qt applications)
AddPackage --foreign kwin-effects-forceblur # KWin Blur effect fork with window class force blur feature (Wayland & X11)
AddPackage --foreign kwin-effects-geometry-change # A KWin animation for windows moved or resized by programs or scripts
AddPackage --foreign plasma6-themes-layan-git # A flat Design theme for KDE Plasma6 desktop

# Miscellaneous
AddPackage xdg-desktop-portal-gtk # A backend implementation for xdg-desktop-portal using GTK

# Files
CreateLink /etc/systemd/system/display-manager.service /usr/lib/systemd/system/cosmic-greeter.service