#!/bin/bash
. script_install.sh

#package=git;
#_install "${package}";
echo "Serão instalados os seguites pacotes:"
echo "  youtube-dl, curl, vim, tree, htop, tilix, guake, yaourt, figlet, cowsay, screenfetch"
echo "---------------------------------------------------"

_installMany "youtube-dl" "curl" "vim" "tree" "htop" "tilix" "guake" "yaourt" "figlet" "cowsay" "screenfetch" 
