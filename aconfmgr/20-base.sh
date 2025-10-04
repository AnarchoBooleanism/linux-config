# List of base packages, non-GUI

# The very base, needed to run anything
AddPackage amd-ucode # Microcode update image for AMD CPUs
AddPackage base # Minimal package set to define a basic Arch Linux installation
AddPackage linux # The Linux kernel and modules
AddPackage linux-firmware # Firmware files for Linux - Default set
AddPackage linux-firmware-marvell # Firmware files for Linux - Firmware for Marvell devices
AddPackage linux-headers # Headers and scripts for building modules for the Linux kernel
AddPackage linux-lts # The LTS Linux kernel and modules
AddPackage linux-lts-headers # Headers and scripts for building modules for the LTS Linux kernel

# NVIDIA items
AddPackage cuda # NVIDIA's GPU programming toolkit
AddPackage lib32-nvidia-utils # NVIDIA drivers utilities (32-bit)
AddPackage libva-nvidia-driver # VA-API implementation that uses NVDEC as a backend
AddPackage nvidia-open # NVIDIA open kernel modules
AddPackage nvidia-open-lts # NVIDIA open kernel modules
AddPackage nvidia-settings # Tool for configuring the NVIDIA graphics driver

# Bootloader
AddPackage efibootmgr # Linux user-space application to modify the EFI Boot Manager
AddPackage refind # An EFI boot manager
AddPackage sbctl # Secure Boot key manager

# Aconfmgr
AddPackage --foreign aconfmgr-git # A configuration manager for Arch Linux

# Paru
AddPackage --foreign paru # Feature packed AUR helper

# Power
AddPackage power-profiles-daemon # Makes power profiles handling available over D-Bus
AddPackage powertop # A tool to diagnose issues with power consumption and power management

# Networking
AddPackage bind # A complete, highly portable implementation of the DNS protocol
AddPackage dnsmasq # Lightweight, easy to configure DNS forwarder and DHCP server
AddPackage ethtool # Utility for controlling network drivers and hardware
AddPackage netctl # Profile based systemd network management
AddPackage networkmanager # Network connection manager and user applications
AddPackage net-tools # Configuration tools for Linux networking
AddPackage tailscale # A mesh VPN that makes it easy to connect your devices, wherever they are.
AddPackage wireguard-tools # next generation secure network tunnel - tools for configuration
AddPackage wireless_tools # Tools allowing to manipulate the Wireless Extensions
AddPackage wpa_supplicant # A utility providing key negotiation for WPA wireless networks

# Security
AddPackage apparmor # Mandatory Access Control (MAC) using Linux Security Module (LSM)
AddPackage ufw # Uncomplicated and easy to use CLI tool for managing a netfilter firewall

# Bluetooth
AddPackage bluez # Daemons for the bluetooth protocol stack
AddPackage bluez-utils # Development and debugging utilities for the bluetooth protocol stack

# Audio, webcam, video
AddPackage pipewire # Low-latency audio/video router and processor
AddPackage pipewire-alsa # Low-latency audio/video router and processor - ALSA configuration
AddPackage pipewire-audio # Low-latency audio/video router and processor - Audio support
AddPackage pipewire-jack # Low-latency audio/video router and processor - JACK replacement
AddPackage pipewire-libcamera # Low-latency audio/video router and processor - Libcamera support
AddPackage pipewire-pulse # Low-latency audio/video router and processor - PulseAudio replacement
AddPackage pipewire-v4l2 # Low-latency audio/video router and processor - V4L2 interceptor
AddPackage sof-firmware # Sound Open Firmware
AddPackage v4l2loopback-utils # v4l2-loopback device – utilities only

# Printing
AddPackage cups # OpenPrinting CUPS - daemon package
AddPackage cups-pdf # PDF printer for cups
AddPackage sane # Scanner Access Now Easy
AddPackage --foreign brlaser # Brother laser printer driver
AddPackage --foreign brother-hll2395dw # Brother HL-L2395DW CUPS driver
AddPackage --foreign cnrdrvcups-lb # CUPS Canon UFR II LIPSLX CARPS2 printer driver for LBP iR MF ImageCLASS ImageRUNNER Laser Shot i-SENSYS ImagePRESS ADVANCE printers and copiers

# Other hardware
AddPackage i2c-tools # Heterogeneous set of I2C tools for Linux that used to be part of lm-sensors
AddPackage smartmontools # Control and monitor S.M.A.R.T. enabled ATA and SCSI Hard Drives
AddPackage nvme-cli # NVM-Express user space tooling for Linux

# Base tools needed to deal with installation
AddPackage 7zip # File archiver for extremely high compression
AddPackage bash-completion # Programmable completion for the bash shell
AddPackage base-devel # Basic tools to build Arch Linux packages
AddPackage dmidecode # Desktop Management Interface table related utilities
AddPackage dialog # A tool to display dialog boxes from shell scripts
AddPackage e2fsprogs # Ext2/3/4 filesystem utilities
AddPackage git # the fast distributed version control system
AddPackage htop # Interactive process viewer
AddPackage jq # Command-line JSON processor
AddPackage man-db # A utility for reading man pages
AddPackage nano # Pico editor clone with enhancements
AddPackage ntfs-3g # NTFS filesystem driver and utilities
AddPackage nvtop # GPUs process monitoring for AMD, Intel and NVIDIA
AddPackage openssh # SSH protocol implementation for remote login, command execution and file transfer
AddPackage stow # Manage installation of multiple softwares in the same directory tree
AddPackage tmux # Terminal multiplexer
AddPackage unrar # The RAR uncompression program
AddPackage wget # Network utility to retrieve files from the web
AddPackage xdg-user-dirs # Manage user directories like ~/Desktop and ~/Music

# Niceties
AddPackage fastfetch # A feature-rich and performance oriented neofetch like system information tool
AddPackage hyfetch # Neofetch with LGBTQ+ pride flags!
AddPackage plymouth # Graphical boot splash screen
AddPackage terminus-font # Monospace bitmap font (for X11 and console)

# Docker
AddPackage docker # Pack, ship and run any application as a lightweight container
AddPackage docker-compose # Fast, isolated development environments using Docker

# Other useful tools
AddPackage android-file-transfer # Android MTP client with minimalistic UI
AddPackage ansible # Official assortment of Ansible collections
AddPackage distrobox # Use any linux distribution inside your terminal.
AddPackage fwupd # Simple daemon to allow session software to update firmware
AddPackage ncdu # Disk usage analyzer with an ncurses interface
AddPackage nix # A purely functional package manager
AddPackage nmap # Utility for network discovery and security auditing
AddPackage pkgstats # Submit a list of installed packages to the Arch Linux project
AddPackage python-dbus # Python bindings for D-Bus
AddPackage python-lxml # Python binding for the libxml2 and libxslt libraries
AddPackage python-pip # The PyPA recommended tool for installing Python packages
AddPackage python-pipx # Install and Run Python Applications in Isolated Environments
AddPackage rclone # rsync for cloud storage
AddPackage reflector # A Python 3 module and script to retrieve and filter the latest Pacman mirror list.
AddPackage texinfo # GNU documentation system for on-line information and printed output
AddPackage unzip # For extracting and viewing files in .zip archives
AddPackage wol # Wake On LAN functionality in a small program. It wakes up hardware that is Magic Packet compliant

# Miscellaenous, not sure what they're here for
AddPackage libxml2-legacy # XML C parser and toolkit (legacy version)
AddPackage tftp-hpa # Official tftp server
AddPackage --foreign gnu-netcat # GNU rewrite of netcat, the network piping application