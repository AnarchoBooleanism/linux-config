# Setting things here because they break otherwise

CreateDir /boot/EFI/BOOT/keys
CopyFile /boot/EFI/BOOT/refind.conf 755
CopyFile /boot/EFI/BOOT/refind.conf-sample 755
CopyFile /boot/EFI/BOOT/refind.conf.bak 755
CreateDir /boot/EFI/BOOT/themes
CopyFile /boot/EFI/BOOT/vars/PreviousBoot 755
CreateDir /boot/EFI/tools
CopyFile /boot/refind_linux.conf 755
CreateFile /etc/.pwd.lock 600 > /dev/null
CopyFile /etc/.updated
CopyFile /etc/NetworkManager/conf.d/20-connectivity.conf
CopyFile /etc/adjtime
CopyFile /etc/brlapi.key 640 '' brlapi
CreateDir /etc/cni/net.d 700
CreateDir /etc/colord '' colord colord
CopyFile /etc/cups/classes.conf 600
CreateFile /etc/cups/classes.conf.O 600 '' cups > /dev/null
CopyFile /etc/cups/printers.conf 600
CopyFile /etc/cups/printers.conf.O 600 '' cups
CopyFile /etc/cups/subscriptions.conf 640
CopyFile /etc/cups/subscriptions.conf.O 640 '' cups
CopyFile /etc/environment
CopyFile /etc/fstab
CopyFile /etc/group
CopyFile /etc/group-
CopyFile /etc/gshadow
CopyFile /etc/gshadow- 600
CopyFile /etc/gufw/Home.profile 600
CopyFile /etc/gufw/Office.profile 600
CopyFile /etc/gufw/Public.profile 600
CopyFile /etc/gufw/gufw.cfg 600
CopyFile /etc/hostname
CopyFile /etc/hosts
CopyFile /etc/hosts.pacnew
CopyFile /etc/issue
CopyFile /etc/locale.conf
CopyFile /etc/locale.gen
CreateLink /etc/localtime /usr/share/zoneinfo/America/Los_Angeles
CopyFile /etc/machine-id 444
CopyFile /etc/makepkg.conf
CopyFile /etc/mkinitcpio.conf
CopyFile /etc/mkinitcpio.d/linux-lts.preset
CopyFile /etc/mkinitcpio.d/linux.preset
CopyFile /etc/nix/nix.conf
CreateLink /etc/os-release ../usr/lib/os-release
CopyFile /etc/pacman.conf
CopyFile /etc/pacman.d/hooks/nvidia.hook '' hihacks hihacks
CopyFile /etc/pacman.d/hooks/touch-linux-kernel.hook
CopyFile /etc/passwd
CopyFile /etc/passwd-
CopyFile /etc/plymouth/plymouthd.conf
CopyFile /etc/resolv.conf
CopyFile /etc/resolv.pre-tailscale-backup.conf
CopyFile /etc/shadow
CopyFile /etc/shadow- 600
CopyFile /etc/shells
CopyFile /etc/ssh/sshd_config
CopyFile /etc/ssh/sshd_config.pacnew
CopyFile /etc/subgid
CreateFile /etc/subgid- > /dev/null
CopyFile /etc/subuid
CreateFile /etc/subuid- > /dev/null
CopyFile /etc/sudoers
CopyFile /etc/sudoers.pacnew 440
CopyFile /etc/sysctl.d/20-quiet-printk.conf
CreateLink /etc/systemd/system/dbus-org.bluez.service /usr/lib/systemd/system/bluetooth.service
CreateLink /etc/systemd/system/dbus-org.freedesktop.nm-dispatcher.service /usr/lib/systemd/system/NetworkManager-dispatcher.service
CreateLink /etc/systemd/system/dbus-org.freedesktop.timesync1.service /usr/lib/systemd/system/systemd-timesyncd.service
CreateLink /etc/systemd/system/systemd-hibernate.service.wants/nvidia-hibernate.service /usr/lib/systemd/system/nvidia-hibernate.service
CreateLink /etc/systemd/system/systemd-hibernate.service.wants/nvidia-resume.service /usr/lib/systemd/system/nvidia-resume.service
CreateLink /etc/systemd/system/systemd-suspend-then-hibernate.service.wants/nvidia-resume.service /usr/lib/systemd/system/nvidia-resume.service
CreateLink /etc/systemd/system/systemd-suspend.service.wants/nvidia-resume.service /usr/lib/systemd/system/nvidia-resume.service
CreateLink /etc/systemd/system/systemd-suspend.service.wants/nvidia-suspend.service /usr/lib/systemd/system/nvidia-suspend.service
CopyFile /etc/systemd/system/wol.service
CreateLink /etc/systemd/user/pipewire-session-manager.service /usr/lib/systemd/user/wireplumber.service
CreateLink /etc/systemd/user/pipewire.service.wants/wireplumber.service /usr/lib/systemd/user/wireplumber.service
CopyFile /etc/timeshift/timeshift.json
CopyFile /etc/ufw/ufw.conf
CopyFile /etc/ufw/user.rules
CopyFile /etc/ufw/user6.rules
CreateDir /etc/userdb
CopyFile /etc/vconsole.conf
CreateDir /lost+found 700
CreateDir /opt/containerd/bin 711
CreateDir /opt/containerd/lib 711
SetFileProperty /opt/containerd mode 711
