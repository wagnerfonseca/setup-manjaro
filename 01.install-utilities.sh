#!/bin/bash
. package-install-pac.sh

#package=git;
#_install "${package}";
echo "Serão instalados diversos pacotes..."

_installMany "youtube-dl" "curl" "vim" "tree" "htop" "tilix" "yay" "figlet" "cowsay" "screenfetch" "xclip" "jq" "pulseaudio-equalizer-ladspa" "pulseeffects" "synapse" "slack-desktop" "google-chrome" "franz-bin" "megasync" "visual-studio-code-bin" "bluez-alsa-git" "the_silver_searcher" "bloomrpc" "remmina"

# sudo yay -S slack-desktop google-chrome franz-bin megasync visual-studio-code-bin bluez-alsa-git
