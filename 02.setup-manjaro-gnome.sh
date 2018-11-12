#!/bin/bash

# ação do clique 
if gsettings get org.gnome.shell.extensions.dash-to-dock click-action -ne 'minimize' then
    gsettings set org.gnome.shell.extensions.dash-to-dock click-action 'minimize'
fi

# Botão direito touchpad
if gsettings get org.gnome.desktop.peripherals.touchpad click-method -e 'fingers' then
    gsettings set org.gnome.desktop.peripherals.touchpad click-method 'areas'
fi

# Auto Start Guake
sudo "$(cp /usr/share/applications/guake.desktop /etc/xdg/autostart/)"
