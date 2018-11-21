#!/bin/bash
. script_basic.sh

VERSION="2018.2.5"
URL="https://download.jetbrains.com/datagrip/datagrip-${VERSION}.tar.gz"

DESTINY_PATH="/opt/Datagrip"

get_resource $URL
download_resource $URL
unpack $DESTINY_PATH

remove_source

sudo ln -s /opt/Datagrip/DataGrip-2018.2.5/bin /usr/local/bin/DataGrip2018 

cat > ~/.local/share/applications/datagrip.desktop <<EOL
[Desktop Entry]
Encoding=UTF-8
Name=DataGrip
Comment=The Cross-Platform IDE for Databases & SQL by JetBrains
Exec=DataGrip2018
Icon=/opt/Datagrip/DataGrip-2018.2.5/bin/datagrip.png
Terminal=false
Type=Application
Categories=Development;
EOL