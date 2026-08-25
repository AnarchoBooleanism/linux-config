# Setting things here because they break otherwise

CreateDir /boot/EFI/BOOT/keys
CopyFile /boot/EFI/BOOT/refind.conf 755
CopyFile /boot/EFI/BOOT/refind.conf-sample 755
CopyFile /boot/refind_linux.conf 755
CreateFile /etc/.pwd.lock 600 > /dev/null
CopyFile /etc/NetworkManager/conf.d/20-connectivity.conf
CopyFile /etc/adjtime
CreateDir /etc/audisp
CreateDir /etc/audit/plugins.d 750
CreateDir /etc/audit/rules.d
CopyFile /etc/brlapi.key 640 '' brlapi
CopyFile /etc/cdi/nvidia.yaml
CreateDir /etc/cni/net.d 700
CreateDir /etc/colord '' colord colord
CopyFile /etc/cron.d/timeshift-boot
CopyFile /etc/cups/classes.conf 600
CopyFile /etc/cups/classes.conf.O 600 '' cups
CopyFile /etc/cups/printers.conf 600
CopyFile /etc/cups/printers.conf.O 600 '' cups
CopyFile /etc/cups/subscriptions.conf 640
CopyFile /etc/cups/subscriptions.conf.O 640 '' cups
CopyFile /etc/default/btrfsmaintenance
CopyFile /etc/environment
CopyFile /etc/fstab
CopyFile /etc/group
CopyFile /etc/group-
CopyFile /etc/gshadow 644
CopyFile /etc/gshadow-
CopyFile /etc/gufw/Home.profile 600
CopyFile /etc/gufw/Office.profile 600
CopyFile /etc/gufw/Public.profile 600
CopyFile /etc/gufw/gufw.cfg 600
CopyFile /etc/hostname
CopyFile /etc/hosts
CopyFile /etc/issue
CopyFile /etc/locale.conf
CopyFile /etc/locale.gen
CreateLink /etc/localtime /usr/share/zoneinfo/America/Los_Angeles
CopyFile /etc/machine-id 444
CopyFile /etc/makepkg.conf
CopyFile /etc/makepkg.conf.d/fortran.conf
CopyFile /etc/mkinitcpio.conf
CopyFile /etc/mkinitcpio.d/linux-lts.preset
CopyFile /etc/mkinitcpio.d/linux-zen.preset
CopyFile /etc/mkinitcpio.d/linux.preset.pacsave
CopyFile /etc/nix/nix.conf
CopyFile /etc/openrgb/Configuration.json
CopyFile /etc/openrgb/profiles/Default.json
CopyFile /etc/openrgb/profiles/main.json
CopyFile /etc/openrgb/sizes.ors
CreateLink /etc/os-release ../usr/lib/os-release
CopyFile /etc/pacman.conf
CopyFile /etc/pacman.d/hooks/nvidia.hook '' hihacks hihacks
CopyFile /etc/pacman.d/hooks/refind-tools-fwupd.hook
CopyFile /etc/pacman.d/hooks/refind-tools-memtest86.hook
CopyFile /etc/pacman.d/hooks/refind-tools-uefi-shell.hook
CopyFile /etc/pacman.d/hooks/touch-linux-kernel.hook
CopyFile /etc/pam.d/cosmic-greeter
CopyFile /etc/passwd
CopyFile /etc/passwd-
CopyFile /etc/plymouth/plymouthd.conf
CopyFile /etc/profile.d/data_control_cosmic.sh
CopyFile /etc/shadow 644
CopyFile /etc/shadow-
CopyFile /etc/shells
CopyFile /etc/ssh/sshd_config
CopyFile /etc/subgid
CreateFile /etc/subgid- > /dev/null
CopyFile /etc/subuid
CreateFile /etc/subuid- > /dev/null
CopyFile /etc/sudoers 644
CopyFile /etc/sysctl.d/20-quiet-printk.conf
CopyFile /etc/sysctl.d/99-swappiness.conf
CreateLink /etc/systemd/system/autovt@.service /usr/lib/systemd/system/getty@.service
CopyFile /etc/systemd/system/btrfs-balance.timer.d/schedule.conf
CopyFile /etc/systemd/system/btrfs-scrub.timer.d/schedule.conf
CreateLink /etc/systemd/system/dbus-org.bluez.service /usr/lib/systemd/system/bluetooth.service
CreateLink /etc/systemd/system/dbus-org.freedesktop.nm-dispatcher.service /usr/lib/systemd/system/NetworkManager-dispatcher.service
CreateLink /etc/systemd/system/dbus-org.freedesktop.timesync1.service /usr/lib/systemd/system/systemd-timesyncd.service
CopyFile /etc/systemd/system/nix-gc.service
CopyFile /etc/systemd/system/nix-gc.timer
CopyFile /etc/systemd/system/wol.service
CreateLink /etc/systemd/user/pipewire-session-manager.service /usr/lib/systemd/user/wireplumber.service
CreateLink /etc/systemd/user/pipewire.service.wants/wireplumber.service /usr/lib/systemd/user/wireplumber.service
CopyFile /etc/timeshift/timeshift.json
CopyFile /etc/tpm2-tss/fapi-profiles/P_ECCP384SHA384.json
CopyFile /etc/tpm2-tss/fapi-profiles/P_RSA3072SHA384.json
CopyFile /etc/ufw/ufw.conf
CopyFile /etc/ufw/user.rules
CopyFile /etc/ufw/user6.rules
CreateDir /etc/userdb
CopyFile /etc/vconsole.conf
CreateDir /lost+found 700
CreateDir /opt/containerd/bin 711
CreateDir /opt/containerd/lib 711
CopyFile /opt/ventoy/Ventoy2Disk.ini


# 2026年  8月 24日 月曜日 20:22:38 PDT - New file properties


SetFileProperty / mode 555
SetFileProperty /etc/ssl/private mode 755
SetFileProperty /opt/containerd mode 711


# 2026年  8月 24日 月曜日 20:22:38 PDT - Extra file properties


SetFileProperty /etc/fah-client/config.xml group ''
SetFileProperty /etc/fah-client/config.xml owner ''
