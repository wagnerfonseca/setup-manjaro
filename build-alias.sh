#!/bin/bash

echo "### Alias" >> ~/.profile
echo "alias pmi='sudo pacman --needed --noconfirm -S '" >> ~/.profile
echo "alias pmq='pacman --color always -Qs ' " >> ~/.profile
echo "alias pmqi='pacman -Qi' " >> ~/.profile
echo "alias pmql='pacman -Ql' " >> ~/.profile
echo "alias pmr='sudo pacman -Rs' " >> ~/.profile
echo "alias pms='pacman --color always -Ss ' " >> ~/.profile
echo "alias pmu='sudo pacman -Syyuu' " >> ~/.profile
echo "alias c='clear'"

source $HOME/.profile
