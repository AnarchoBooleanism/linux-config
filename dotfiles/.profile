# Other stuff

# For firefox
export FREETYPE_PROPERTIES="cff:no-stem-darkening=0 autofitter:no-stem-darkening=0"
export XMODIFIERS=@im=fcitx
#export GTK_IM_MODULE=fcitx # Complaints for this when in KDE Plasma
#export QT_IM_MODULE=fcitx
export MOZ_DISABLE_RDD_SANDBOX=1
export LIBVA_DRIVER_NAME=nvidia
#export __EGL_VENDOR_LIBRARY_FILENAMES=/usr/share/glvnd/egl_vendor.d/10_nvidia.json # Broken with COSMIC

# Make nix work properly
export LOCALE_ARCHIVE=/usr/lib/locale/locale-archive
export PATH="$HOME/.nix-profile/bin:$PATH"
