# List of extra fonts to install

AddPackage adobe-source-han-sans-otc-fonts # Adobe Source Han Sans - Pan-CJK OpenType/CFF Collection fonts
AddPackage adobe-source-han-serif-otc-fonts # Adobe Source Han Serif - Pan-CJK OpenType/CFF Collection fonts
AddPackage noto-fonts-cjk # Google Noto CJK fonts
AddPackage noto-fonts-emoji # Google Noto Color Emoji font
AddPackage otf-ipaexfont # Japanese outline fonts following the tradition of Japanese printing font
AddPackage otf-ipafont # Japanese outline fonts by Information-technology Promotion Agency, Japan (IPA)
AddPackage ttf-dejavu # Font family based on the Bitstream Vera Fonts with a wider range of characters
AddPackage ttf-droid # General-purpose fonts released by Google as part of Android
AddPackage ttf-hanazono # A free Japanese kanji font, which contains about 78,685 characters (and 2 SPACEs) defined in ISO/IEC 10646 standard / the Unicode standard.
AddPackage ttf-indic-otf # Indic Opentype Fonts collection
AddPackage ttf-liberation # Font family which aims at metric compatibility with Arial, Times New Roman, and Courier New
AddPackage ttf-roboto # Google's signature family of fonts
AddPackage --foreign ttf-ms-win11-auto # Microsoft Windows 11 TrueType fonts
AddPackage --foreign ttf-ms-win11-auto-japanese # Microsoft Windows 11 Japanese TrueType fonts
AddPackage --foreign ttf-ms-win11-auto-korean # Microsoft Windows 11 Korean TrueType fonts
AddPackage --foreign ttf-ms-win11-auto-other # Microsoft Windows 11 Other TrueType fonts
AddPackage --foreign ttf-ms-win11-auto-sea # Microsoft Windows 11 Southeast Asian TrueType fonts
AddPackage --foreign ttf-ms-win11-auto-thai # Microsoft Windows 11 Thai TrueType fonts
AddPackage --foreign ttf-ms-win11-auto-zh_cn # Microsoft Windows 11 Simplified Chinese TrueType fonts
AddPackage --foreign ttf-ms-win11-auto-zh_tw # Microsoft Windows 11 Traditional Chinese TrueType fonts

CreateLink /etc/fonts/conf.d/10-hinting-slight.conf /usr/share/fontconfig/conf.default/10-hinting-slight.conf
CreateLink /etc/fonts/conf.d/10-scale-bitmap-fonts.conf /usr/share/fontconfig/conf.default/10-scale-bitmap-fonts.conf
CreateLink /etc/fonts/conf.d/10-yes-antialias.conf /usr/share/fontconfig/conf.default/10-yes-antialias.conf
CreateLink /etc/fonts/conf.d/11-lcdfilter-default.conf /usr/share/fontconfig/conf.default/11-lcdfilter-default.conf
CreateLink /etc/fonts/conf.d/20-unhint-small-dejavu-lgc-sans-mono.conf /usr/share/fontconfig/conf.default/20-unhint-small-dejavu-lgc-sans-mono.conf
CreateLink /etc/fonts/conf.d/20-unhint-small-dejavu-lgc-sans.conf /usr/share/fontconfig/conf.default/20-unhint-small-dejavu-lgc-sans.conf
CreateLink /etc/fonts/conf.d/20-unhint-small-dejavu-lgc-serif.conf /usr/share/fontconfig/conf.default/20-unhint-small-dejavu-lgc-serif.conf
CreateLink /etc/fonts/conf.d/20-unhint-small-dejavu-sans-mono.conf /usr/share/fontconfig/conf.default/20-unhint-small-dejavu-sans-mono.conf
CreateLink /etc/fonts/conf.d/20-unhint-small-dejavu-sans.conf /usr/share/fontconfig/conf.default/20-unhint-small-dejavu-sans.conf
CreateLink /etc/fonts/conf.d/20-unhint-small-dejavu-serif.conf /usr/share/fontconfig/conf.default/20-unhint-small-dejavu-serif.conf
CreateLink /etc/fonts/conf.d/20-unhint-small-vera.conf /usr/share/fontconfig/conf.default/20-unhint-small-vera.conf
CreateLink /etc/fonts/conf.d/30-metric-aliases.conf /usr/share/fontconfig/conf.default/30-metric-aliases.conf
CreateLink /etc/fonts/conf.d/40-nonlatin.conf /usr/share/fontconfig/conf.default/40-nonlatin.conf
CreateLink /etc/fonts/conf.d/44-source-han-sans-otc.conf /usr/share/fontconfig/conf.default/44-source-han-sans-otc.conf
CreateLink /etc/fonts/conf.d/44-source-han-serif-otc.conf /usr/share/fontconfig/conf.default/44-source-han-serif-otc.conf
CreateLink /etc/fonts/conf.d/45-generic.conf /usr/share/fontconfig/conf.default/45-generic.conf
CreateLink /etc/fonts/conf.d/45-latin.conf /usr/share/fontconfig/conf.default/45-latin.conf
CreateLink /etc/fonts/conf.d/46-noto-mono.conf /usr/share/fontconfig/conf.default/46-noto-mono.conf
CreateLink /etc/fonts/conf.d/46-noto-sans.conf /usr/share/fontconfig/conf.default/46-noto-sans.conf
CreateLink /etc/fonts/conf.d/46-noto-serif.conf /usr/share/fontconfig/conf.default/46-noto-serif.conf
CreateLink /etc/fonts/conf.d/48-spacing.conf /usr/share/fontconfig/conf.default/48-spacing.conf
CreateLink /etc/fonts/conf.d/49-sansserif.conf /usr/share/fontconfig/conf.default/49-sansserif.conf
CreateLink /etc/fonts/conf.d/50-user.conf /usr/share/fontconfig/conf.default/50-user.conf
CreateLink /etc/fonts/conf.d/51-local.conf /usr/share/fontconfig/conf.default/51-local.conf
CreateLink /etc/fonts/conf.d/57-dejavu-sans-mono.conf /usr/share/fontconfig/conf.default/57-dejavu-sans-mono.conf
CreateLink /etc/fonts/conf.d/57-dejavu-sans.conf /usr/share/fontconfig/conf.default/57-dejavu-sans.conf
CreateLink /etc/fonts/conf.d/57-dejavu-serif.conf /usr/share/fontconfig/conf.default/57-dejavu-serif.conf
CreateLink /etc/fonts/conf.d/58-dejavu-lgc-sans-mono.conf /usr/share/fontconfig/conf.default/58-dejavu-lgc-sans-mono.conf
CreateLink /etc/fonts/conf.d/58-dejavu-lgc-sans.conf /usr/share/fontconfig/conf.default/58-dejavu-lgc-sans.conf
CreateLink /etc/fonts/conf.d/58-dejavu-lgc-serif.conf /usr/share/fontconfig/conf.default/58-dejavu-lgc-serif.conf
CreateLink /etc/fonts/conf.d/60-generic.conf /usr/share/fontconfig/conf.default/60-generic.conf
CreateLink /etc/fonts/conf.d/60-latin.conf /usr/share/fontconfig/conf.default/60-latin.conf
CreateLink /etc/fonts/conf.d/65-droid-kufi.conf /usr/share/fontconfig/conf.default/65-droid-kufi.conf
CreateLink /etc/fonts/conf.d/65-droid-sans-mono.conf /usr/share/fontconfig/conf.default/65-droid-sans-mono.conf
CreateLink /etc/fonts/conf.d/65-droid-sans.conf /usr/share/fontconfig/conf.default/65-droid-sans.conf
CreateLink /etc/fonts/conf.d/65-droid-serif.conf /usr/share/fontconfig/conf.default/65-droid-serif.conf
CreateLink /etc/fonts/conf.d/65-fonts-persian.conf /usr/share/fontconfig/conf.default/65-fonts-persian.conf
CreateLink /etc/fonts/conf.d/65-nonlatin.conf /usr/share/fontconfig/conf.default/65-nonlatin.conf
CreateLink /etc/fonts/conf.d/66-noto-mono.conf /usr/share/fontconfig/conf.default/66-noto-mono.conf
CreateLink /etc/fonts/conf.d/66-noto-sans.conf /usr/share/fontconfig/conf.default/66-noto-sans.conf
CreateLink /etc/fonts/conf.d/66-noto-serif.conf /usr/share/fontconfig/conf.default/66-noto-serif.conf
CreateLink /etc/fonts/conf.d/69-unifont.conf /usr/share/fontconfig/conf.default/69-unifont.conf
CreateLink /etc/fonts/conf.d/69-urw-bookman.conf /usr/share/fontconfig/conf.default/69-urw-bookman.conf
CreateLink /etc/fonts/conf.d/69-urw-c059.conf /usr/share/fontconfig/conf.default/69-urw-c059.conf
CreateLink /etc/fonts/conf.d/69-urw-d050000l.conf /usr/share/fontconfig/conf.default/69-urw-d050000l.conf
CreateLink /etc/fonts/conf.d/69-urw-fallback-backwards.conf /usr/share/fontconfig/conf.default/69-urw-fallback-backwards.conf
CreateLink /etc/fonts/conf.d/69-urw-fallback-generics.conf /usr/share/fontconfig/conf.default/69-urw-fallback-generics.conf
CreateLink /etc/fonts/conf.d/69-urw-fallback-specifics.conf /usr/share/fontconfig/conf.default/69-urw-fallback-specifics.conf
CreateLink /etc/fonts/conf.d/69-urw-gothic.conf /usr/share/fontconfig/conf.default/69-urw-gothic.conf
CreateLink /etc/fonts/conf.d/69-urw-nimbus-mono-ps.conf /usr/share/fontconfig/conf.default/69-urw-nimbus-mono-ps.conf
CreateLink /etc/fonts/conf.d/69-urw-nimbus-roman.conf /usr/share/fontconfig/conf.default/69-urw-nimbus-roman.conf
CreateLink /etc/fonts/conf.d/69-urw-nimbus-sans.conf /usr/share/fontconfig/conf.default/69-urw-nimbus-sans.conf
CreateLink /etc/fonts/conf.d/69-urw-p052.conf /usr/share/fontconfig/conf.default/69-urw-p052.conf
CreateLink /etc/fonts/conf.d/69-urw-standard-symbols-ps.conf /usr/share/fontconfig/conf.default/69-urw-standard-symbols-ps.conf
CreateLink /etc/fonts/conf.d/69-urw-z003.conf /usr/share/fontconfig/conf.default/69-urw-z003.conf
CreateLink /etc/fonts/conf.d/75-yes-terminus.conf /usr/share/fontconfig/conf.default/75-yes-terminus.conf
CreateLink /etc/fonts/conf.d/80-delicious.conf /usr/share/fontconfig/conf.default/80-delicious.conf
CreateLink /etc/fonts/conf.d/90-synthetic.conf /usr/share/fontconfig/conf.default/90-synthetic.conf