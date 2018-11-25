#!/bin/bash
. script_install.sh

#package=git;
#_install "${package}";
echo "Serão instalados diversos pacotes..."

_installMany "youtube-dl" "curl" "vim" "tree" "htop" "tilix" "yaourt" "figlet" "cowsay" "screenfetch" "xclip" "okular" "jq" "pulseaudio-equalizer-ladspa" "pulseeffects"

sudo yaourt -S slack-desktop google-chrome franz-bin megasync visual-studio-code-bin albert
