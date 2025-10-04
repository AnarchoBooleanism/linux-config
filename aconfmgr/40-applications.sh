# List of extra (mostly GUI) applications to install

AddPackage sunshine # Self-hosted game stream host for Moonlight

# Steam
AddPackage gamescope # SteamOS session compositing window manager
AddPackage steam # Valve's digital software delivery system
AddPackage --foreign game-devices-udev # Udev rules for controllers

# Virtual Machine Manager
AddPackage qemu-base # A basic QEMU setup for headless environments
AddPackage qemu-full # A full QEMU setup
AddPackage virt-manager # Desktop user interface for managing virtual machines

AddPackage --foreign foldingathome # A distributed computing project for simulating protein dynamics
AddPackage --foreign rustdesk-bin # Yet another remote desktop software, written in Rust. Works out of the box, no configuration required.
AddPackage --foreign visual-studio-code-bin # Visual Studio Code (vscode): Editor for building and debugging modern web and cloud applications (official binary version)
AddPackage --foreign winboat # Run Windows apps on Linux with seamless integration

# OpenRGB
AddPackage --foreign openrgb-git # Open source RGB lighting control that doesn't depend on manufacturer software
AddPackage --foreign openrgb-plugin-effects-git # Effects plugin for OpenRGB

# Files
SetFileProperty /etc/fah-client/config.xml group fah-client
SetFileProperty /etc/fah-client/config.xml owner fah-client
SetFileProperty /etc/fah-client group fah-client
SetFileProperty /etc/fah-client owner fah-client